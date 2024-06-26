# frozen_string_literal: true

module Humanize
  class Th
    POINT = "จุด"
    INFINITY = 'เป็นอนันต์'
    UNDEFINED = 'ไม่ได้กำหนด'
    NEGATIVE = 'ติดลบ'
    MILLION = 'ล้าน'
    LOTS = [nil, 'ร้อย', 'พัน', 'หมื่น', 'แสน', MILLION].freeze
    SUB_ONE_GROUPING = ['ศูนย์', 'หนึ่ง', 'สอง', 'สาม', 'สี่', 'ห้า', 'หก', 'เจ็ด', 'แปด', 'เก้า', 'สิบ', 'สิบเอ็ด', 'สิบสอง', 'สิบสาม', 'สิบสี่', 'สิบห้า', 'สิบหก', 'สิบเจ็ด', 'สิบแปด', 'สิบเก้า', 'ยี่สิบ', 'ยี่สิบเอ็ด', 'ยี่สิบสอง', 'ยี่สิบสาม', 'ยี่สิบสี่', 'ยี่สิบห้า', 'ยี่สิบหก', 'ยี่สิบเจ็ด', 'ยี่สิบแปด', 'ยี่สิบเก้า', 'สามสิบ', 'สามสิบเอ็ด', 'สามสิบสอง', 'สามสิบสาม', 'สามสิบสี่', 'สามสิบห้า', 'สามสิบหก', 'สามสิบเจ็ด', 'สามสิบแปด', 'สามสิบเก้า', 'สี่สิบ', 'สี่สิบเอ็ด', 'สี่สิบสอง', 'สี่สิบสาม', 'สี่สิบสี่', 'สี่สิบห้า', 'สี่สิบหก', 'สี่สิบเจ็ด', 'สี่สิบแปด', 'สี่สิบเก้า', 'ห้าสิบ', 'ห้าสิบเอ็ด', 'ห้าสิบสอง', 'ห้าสิบสาม', 'ห้าสิบสี่', 'ห้าสิบห้า', 'ห้าสิบหก', 'ห้าสิบเจ็ด', 'ห้าสิบแปด', 'ห้าสิบเก้า', 'หกสิบ', 'หกสิบเอ็ด', 'หกสิบสอง', 'หกสิบสาม', 'หกสิบสี่', 'หกสิบห้า', 'หกสิบหก', 'หกสิบเจ็ด', 'หกสิบแปด', 'หกสิบเก้า', 'เจ็ดสิบ', 'เจ็ดสิบเอ็ด', 'เจ็ดสิบสอง', 'เจ็ดสิบสาม', 'เจ็ดสิบสี่', 'เจ็ดสิบห้า', 'เจ็ดสิบหก', 'เจ็ดสิบเจ็ด', 'เจ็ดสิบแปด', 'เจ็ดสิบเก้า', 'แปดสิบ', 'แปดสิบเอ็ด', 'แปดสิบสอง', 'แปดสิบสาม', 'แปดสิบสี่', 'แปดสิบห้า', 'แปดสิบหก', 'แปดสิบเจ็ด', 'สิบแปดคน', 'แปดสิบเก้า', 'เก้าสิบ', 'เก้าสิบเอ็ด', 'เก้าสิบสอง', 'เก้าสิบสาม', 'เก้าสิบสี่', 'เก้าสิบห้า', 'เก้าสิบหก', 'เก้าสิบเจ็ด', 'เก้าสิบแปด', 'เก้าสิบเก้า'].freeze
  end
end
