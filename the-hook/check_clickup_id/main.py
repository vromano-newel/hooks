# print_arguments/main.py
import argparse

def check_commit(arguments: list[str]):
    print('list:')
    for argument in arguments:
        print(argument)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("filenames", nargs="*")
    args = parser.parse_args()

    check_commit(args.filenames)


if __name__ == "__main__":
    main()