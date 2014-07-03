require 'rspec'
require 'pry-debugger'
require_relative '../stack_array.rb'
require_relative '../stack_linked_list.rb'

# shared_examples 'a stack' do
#   let(:sa) { described_class.new }

describe "StackArray" do
  before do
    @sa = StackArray.new
    @sa.push(1)
    @sa.push(2)
    @sa.push(3)
    @sa.push(4)
  end

  it "creates a stack and adds to it" do
    expect(@sa.stack).to eq([1,2,3,4])
  end

  it 'removes the last from the stack' do
    @sa.stack.pop
    expect(@sa.stack).to eq([1,2,3])
  end

  it 'can return the length of the stack' do
    expect(@sa.count).to eq(4)
  end

  it 'knows the value at the top of the stack' do
    expect(@sa.peek).to eq(4)
  end

  end

describe "StackLinkedList" do
  before do
    @sll = StackLinkedList.new
    # binding.pry
    @sll.add_child(1)
    @sll.add_child(2)
    @sll.add_child(3)
    @sll.add_child(4)
  end

  it "creates a stack and adds to it" do
    expect(@sll.child).to eq([4])
  end

  xit 'removes the last from the stack' do
    @sll.child.pop
    expect(@sll.child).to eq([1,2,3])
  end

  xit 'can return the length of the stack' do
    expect(@sll.count).to eq(4)
  end

  xit 'knows the value at the top of the stack' do
    expect(@sll.peek).to eq(4)
  end

  end
# end

# describe StackArray do
#   it_behaves_like 'a stack'
# end

# describe StackLinkedList do
#   it_behaves_like 'a stack'
# end
