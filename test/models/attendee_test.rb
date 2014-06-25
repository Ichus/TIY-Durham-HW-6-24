require 'test_helper'

class AttendeeTest < ActiveSupport::TestCase
  test "first_name is required" do
    showgoer = Attendee.create(last_name: "Smith")
    assert showgoer.invalid?
  end

  test "first_name is within required length" do
    string_ray = []
    2.times { string_ray = string_ray << "abcdefghijklmnopqrstuvwxyz_" }
    showgoer = Attendee.create(first_name: string_ray.to_s, last_name: "Smith")
    assert showgoer.invalid?
  end

  test "last_name is required" do
    showgoer = Attendee.create(first_name: "Billy")
    assert showgoer.invalid?
  end

  test "last_name is within required length" do
    string_ray = []
    2.times { string_ray = string_ray << "abcdefghijklmnopqrstuvwxyz_" }
    showgoer = Attendee.create(first_name: "Billy", last_name: string_ray.to_s)
    assert showgoer.invalid?
  end
end
