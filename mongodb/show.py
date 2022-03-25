"""Functions for running."""

from pymongo import MongoClient


client = MongoClient(port=27017)
db = client.business
collection = db.reviews


def main() -> None:
    """Run main method."""
    print(collection.find_one({'rating': 5}))
    five_star_count = collection.count_documents({'rating': 5})
    print(five_star_count)


if __name__ == '__main__':
    main()
