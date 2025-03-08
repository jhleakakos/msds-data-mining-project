from pull_data import pull_data

if __name__ == '__main__':
    pull_data()

    # I am running the database scripts manually, but we could trigger them from here, probably with a
    # service account that can call stored procedures that encapsulate the scripts in src/db