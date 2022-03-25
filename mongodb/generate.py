"""Functions to generate names."""

from pymongo import MongoClient
from random import randint
from typing import List, Dict, Any


__all__ = [
        'single_business'
]

names = [
        'Kitchen', 'Animal', 'State', 'Tastey', 'Big', 'City', 'Fish',
        'Pizza', 'Goat', 'Salty', 'Sandwich', 'Lazy', 'Fun']
company_type = ['LLC', 'Inc', 'Company', 'Corporation']
company_cuisine = [
        'Pizza', 'Bar Food', 'Fast Food', 'Italian', 'Mexican',
        'American', 'Sushi Bar', 'Vegetarian']


def single_business() -> Dict[str, Any]:
    """Generate data for a single business."""
    return {
            'name': pick_name(names) + ' ' + pick_name(names) + ' ' +
            pick_name(company_type),
            'rating': randint(1, 5),
            'cuisine': pick_name(company_cuisine)
            }


def pick_name(data: List[str]) -> str:
    """Pick name from the data."""
    return data[randint(0, (len(data)-1))]


def main() -> None:
    """Run main method."""
    business = [single_business() for i in range(500)]

    client = MongoClient(port=27017)
    db = client.business
    collection = db.reviews

    collection.insert_one(business[0])
    collection.insert_many(business[1:])
    print(collection.inserted_ids)
    print('Completed!')


if __name__ == '__main__':
    main()
