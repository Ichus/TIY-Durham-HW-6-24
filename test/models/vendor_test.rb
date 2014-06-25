require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  test "name is required" do
    vendor = Vendor.create(vendor_type: "merch", location: "1-A", show_id: 0)
    assert vendor.invalid?
  end

  test "name is within required length" do
    string_ray = []
    9.times { string_ray = string_ray << "abcdefghijklmnopqrstuvwxyz_" }
    vendor = Vendor.create(name: string_ray.to_s, vendor_type: "merch",
                           location: "1-A", show_id: 0)
    assert vendor.invalid?
  end

  test "vendor_type is required" do
    vendor = Vendor.create(name: "merch", location: "1-A", show_id: 0)
    assert vendor.invalid?
  end

  test "vendor_type is within required length" do
    string_ray = []
    9.times { string_ray = string_ray << "abcdefghijklmnopqrstuvwxyz_" }
    vendor = Vendor.create(name: string_ray.to_s, vendor_type: string_ray.to_s,
                           location: "1-A", show_id: 0)
    assert vendor.invalid?
  end

  test "location is required" do
    vendor = Vendor.create(name: "official-merch", vendor_type: "merch", show_id: 0)
    assert vendor.invalid?
  end

  test "location is within required length" do
    string_ray = []
    9.times { string_ray = string_ray << "abcdefghijklmnopqrstuvwxyz_" }
    vendor = Vendor.create(name: "official-merch", vendor_type: "merch",
                           location: string_ray.to_s, show_id: 0)
    assert vendor.invalid?
  end

  test "location is unique" do
    Vendor.create(name: "official-merch", vendor_type: "merch",
                  location: "1-A", show_id: 0)
    vendor_dup = Vendor.create(name: "unofficial merch", vendor_type: "merch",
                               location: "1-A", show_id: 0)
    assert vendor_dup.invalid?
  end

  test "show_id is required" do
    vendor = Vendor.create(vendor_type: "merch", location: "1-A")
    assert vendor.invalid?
  end
end
