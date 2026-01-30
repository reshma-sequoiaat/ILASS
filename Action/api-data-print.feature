Feature: Full API Data Print and Filter 

Background:
    * url petstoreUrl
    * configure headers = { Accept: 'application/json', Content-Type: 'application/json' }

Scenario: Get available pets and print
    * path 'pet', 'findByStatus'
    * param status = 'available'
    * method get
    * status 200
    * print 'ALL AVAILABLE PETS:', karate.pretty(response)
    * print 'TOTAL COUNT:', response.length

Scenario: Filter pets by name
    * def petName = 'doggie'
    * path 'pet', 'findByStatus'
    * param status = 'available'
    * method get
    * status 200
    * def filtered = response.filter(p => p.name == petName)
    * print 'FILTERED PETS:', karate.pretty(filtered)
    * print 'FILTERED COUNT:', filtered.length

Scenario: Extract selected fields
    * path 'pet', 'findByStatus'
    * param status = 'available'
    * method get
    * status 200
    * def simplified = response.map(p => ({ id: p.id, name: p.name, status: p.status }))
    * print 'SIMPLIFIED PET DATA:', karate.pretty(simplified)

Scenario: Sort pets safely by name (GraalJS-safe)
    * path 'pet', 'findByStatus'
    * param status = 'available'
    * method get
    * status 200
    * def sortedPets =
    """
    response.sort(function(a, b) {
      var nameA = a.name ? a.name : '';
      var nameB = b.name ? b.name : '';
      return nameA > nameB ? 1 : nameA < nameB ? -1 : 0;
    })
    """
    * print 'SORTED PETS:', karate.pretty(sortedPets)

Scenario: Create pet and fetch same pet (SAFE)
    * def pet =
    """
    {
      "id": 777777,
      "name": "KarateDog",
      "status": "available"
    }
    """
    * path 'pet'
    * request pet
    * method post
    * status 200
    * def petId = response.id
    * path 'pet', petId
    * method get
    * status 200
    * print 'FETCHED PET:', karate.pretty(response)

Scenario Outline: Count pets by status
    * path 'pet', 'findByStatus'
    * param status = '<status>'
    * method get
    * status 200
    * print 'STATUS:', '<status>'
    * print 'COUNT:', response.length

Examples:
    | karate.call('../Action/input-data.feature@setup').inputs |

Scenario: Save available pets to file
    * path 'pet', 'findByStatus'
    * param status = 'available'
    * method get
    * status 200
    * karate.write(response, 'target/available-pets.json')
    * print 'FILE WRITTEN: target/available-pets.json'