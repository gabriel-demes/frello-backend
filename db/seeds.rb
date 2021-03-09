# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = [
    {
        username: 'gabe',
        name: 'Gbariel Demes',
        organization: [
            {
                id: 1,
                name: 'flatiron',
                membership_code: 'abc123'
            }
        ]
    }
]

user2 = [
    {
        username: 'jask',
        name: 'Jaskomal Randhawa',
        organization: [
            {
                id: 2,
                name: 'flatiron',
                membership_code: 'abc123'
            }
        ]
    }
]


org1 = [
    {
        id = 1,
        name = 'flatiron',
        membership_code: 'abc123',
        lists: [
            {
                id: 1,
                organization_id: 1,
                title: "Project 3",
                taskcards: [
                    {
                        id: 1,
                        list_id: 1,
                        date_created: '3/9/21',
                        date_due: '3/12/21',
                        title: 'backend',
                        description: 'Working on backend of task 3'
                    },
                    {
                        id: 2,
                        list_id: 1,
                        date_created: '3/9/21',
                        date_due: '3/12/21',
                        title: 'frontend',
                        description: 'Work on frontend of task 3'
                    }
                ]
            }
        ]
    }
]