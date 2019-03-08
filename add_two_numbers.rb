# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

require 'byebug'

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

l1 = ListNode.new(2)
l1.next = ListNode.new(4)
l1.next.next = ListNode.new(3)

r1 = ListNode.new(5)
r1.next = ListNode.new(6)
r1.next.next = ListNode.new(4)

def add_two_numbers(l1, l2)
  current1 = l1 
  current2 = l2 
  carry = 0
  list = ListNode.new(-1)
  curList = list 
  until (current1 == nil && current2 == nil && carry == 0)
    val1 = current1 ? current1.val : 0 
    val2 = current2 ? current2.val : 0 
    sum = val1 + val2 + carry  
    if curList && curList.val == -1 
        curList.val = sum % 10
    else
        newNode = ListNode.new(sum % 10)
        curList.next = newNode
        curList = curList.next  
    end 
    carry = sum / 10
    current1 = current1.next if current1 
    current2 = current2.next if current2 
  end
  list 
end

p add_two_numbers(l1, r1)
