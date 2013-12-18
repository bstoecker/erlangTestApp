erlangTestApp
=============

app to test the features of chicago boss framework

POST ga:

{
  "message": "Hello World",
  "employees": [
    {
      "first_name": "Jules",
      "last_name": "Winfield",
      "id": 1
    },
    {
      "first_name": "Vincent",
      "last_name": "Vega",
      "id": 2
    },
    {
      "first_name": "Mia",
      "last_name": "Wallace",
      "id": 3
    },
    {
      "first_name": "The",
      "last_name": "Wolf",
      "id": 4
    }

  ],
  "activities": [
    {
      "id": 1,
      "employee_id": 2,
      "cathegory": "work",
      "workload_id": 1,
      "from": "2012-01-01T01:00:00.000+01:00",
      "to": "2012-01-02T00:00:00.000+01:00"
    }
  ],
  "workloads": [
    {
      "id": 1,
      "interval": 1800,
      "employee_requirements": [
        {
          "time_stamp": "2012-01-01T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-02T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-03T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-04T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-05T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-06T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-07T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-08T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-09T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-10T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-11T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-12T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-13T00:00:00.000+01:00",
          "value": 42
        },
        {
          "time_stamp": "2012-01-14T00:00:00.000+01:00",
          "value": 42
        }
      ]
    }
  ],
  "interval": 900,
  "from": "2012-01-01T01:00:00.000+01:00",
  "to": "2012-01-14T01:15:00.000+01:00"
}


POST list: 

{
  "list_of_list": [
    {
      "list": [
        {
          "id": 1
        },
        {
          "id": 2
        }
      ]
    },
    {
      "list": [
        {
          "id": 3
        },
        {
          "id": 4
        }      
      ]
    }
  ]
}
