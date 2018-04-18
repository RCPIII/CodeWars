def high_and_low(numbers):
  if numbers:
        numbers = numbers.split(" ")
        highest_number = numbers[0]
        lowest_number = numbers[0]
        print(highest_number)
        print(lowest_number)
        print(numbers[0])
        for num in numbers:
            if int(num) > int(highest_number):
                highest_number = num
            if int(num) < int(lowest_number):
                lowest_number = num
        return highest_number + " " + lowest_number