class SimpleMath
  def prompt
    puts "What is the first number?"
    @first_num = gets.to_s.chomp.to_i
    puts "What is the second number?"
    @second_num = gets.to_s.chomp.to_i
    [@first_num, @second_num]
  end

  def add(first_num, second_num)
    first_num + second_num
  end

  def subtract(first_num, second_num)
    first_num - second_num
  end

  def multiply(first_num, second_num)
    first_num * second_num
  end

  def divide(first_num, second_num)
    first_num / second_num
  end

  def output
    prompt
    # add(@first_num, @second_num)
    # subtract(@first_num, @second_num)
    # multiply(@first_num, @second_num)
    # divide(@first_num, @second_num)
    "#{@first_num} + #{@second_num} = #{add(@first_num,
     @second_num)}\n#{@first_num} - #{@second_num} = #{subtract(@first_num,
     @second_num)}\n#{@first_num} * #{@second_num} = #{multiply(@first_num,
     @second_num)}\n#{@first_num} / #{@second_num} = #{divide(@first_num, @second_num)}"
  end
end
