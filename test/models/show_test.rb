require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "name is required" do
    show = Show.create(max_attendence: 20000, stages: 8, max_vendors: 125)
    assert show.invalid?
  end

  test "name is within required length" do
    string_ray = []
    9.times { string_ray = string_ray << "abcdefghijklmnopqrstuvwxyz_" }
    show = Show.create(name: string_ray.to_s, max_attendence: 20000, stages: 8,
                       max_vendors: 125)
    assert show.invalid?
  end

  test "max_attendence must be an integer" do
    show = Show.create(name: "epic show", max_attendence: 20000.232342,
                       stages: 8, max_vendors: 125)
    assert show.invalid?
  end

  test "max_attendence must be greater than zero" do
    show = Show.create(name: "epic show", max_attendence: 0, stages: 8,
                       max_vendors: 125)
    assert show.invalid?
  end

  test "stages must be an integer" do
    show = Show.create(name: "epic show", max_attendence: 20000,
                       stages: 8.232423, max_vendors: 125)
    assert show.invalid?
  end

  test "stages must be greater than zero" do
    show = Show.create(name: "epic show", max_attendence: 20000, stages: 0,
                       max_vendors: 125)
    assert show.invalid?
  end

  test "max_vendors must be an integer" do
    show = Show.create(name: "epic show", max_attendence: 20000,
                       stages: 8, max_vendors: 125.2342423)
    assert show.invalid?
  end

  test "max_vendors must be greater than zero" do
    show = Show.create(name: "epic show", max_attendence: 20000, stages: 8,
                       max_vendors: 0)
    assert show.invalid?
  end

  test "tickets_available? returns true when tickets are remaining" do
    assert shows(:one).tickets_available?
  end

  test "tickets_available? returns false when tickets are not remaining" do
    refute shows(:two).tickets_available?
  end
end
