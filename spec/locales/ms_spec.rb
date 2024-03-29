require 'spec_helper'

RSpec.describe Humanize, "ms locale" do
  before do
    Humanize.configure do |config|
      config.default_locale = :ms
    end
  end

  # rubocop:disable Layout/LineLength
  ms_tests = [
    [-1, "minus satu"],
    [-0.042, "minus sifar titik sifar empat dua"],
    [-0.00003345, "minus sifar titik sifar sifar sifar sifar tiga tiga empat lima"],
    [-0.0000017854, "minus sifar titik sifar sifar sifar sifar sifar satu tujuh lapan lima empat"],
    [0.000000123, "sifar titik sifar sifar sifar sifar sifar sifar satu dua tiga"],
    [0, "sifar"],
    [8.15, "lapan titik satu lima"],
    [8.000015, "lapan titik sifar sifar sifar sifar satu lima"],
    [8, "lapan"],
    [11, "sebelas"],
    [21, "dua puluh satu"],
    [99, "sembilan puluh sembilan"],
    [100, "seratus"],
    [101, "seratus satu"],
    [111, "seratus sebelas"],
    [121, "seratus dua puluh satu"],
    [1079, "seribu tujuh puluh sembilan"],
    [10_000, "sepuluh ribu"],
    [10_079, "sepuluh ribu tujuh puluh sembilan"],
    [235_409, "dua ratus tiga puluh lima ribu empat ratus sembilan"],
    [1_007_310, "satu juta tujuh ribu tiga ratus sepuluh"],
    [21_007_310, "dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [321_007_310, "tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [4_321_007_310, "empat bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [14_321_007_310, "empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [514_321_007_310, "lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [6_514_321_007_310, "enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [76_514_321_007_310, "tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [176_514_321_007_310, "seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [2_176_514_321_007_310, "dua quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [12_176_514_321_007_310, "dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [112_176_514_321_007_310, "seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [1_112_176_514_321_007_310, "satu quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [11_112_176_514_321_007_310, "sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [111_112_176_514_321_007_310, "seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [1_111_112_176_514_321_007_310, "satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [21_111_112_176_514_321_007_310, "dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [221_111_112_176_514_321_007_310, "dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [3_221_111_112_176_514_321_007_310, "tiga septillion dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [33_221_111_112_176_514_321_007_310, "tiga puluh tiga septillion dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [333_221_111_112_176_514_321_007_310, "tiga ratus tiga puluh tiga septillion dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [4_333_221_111_112_176_514_321_007_310, "empat oktil tiga ratus tiga puluh tiga septillion dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [44_333_221_111_112_176_514_321_007_310, "empat puluh empat oktil tiga ratus tiga puluh tiga septillion dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"],
    [444_333_221_111_112_176_514_321_007_310, "empat ratus empat puluh empat oktil tiga ratus tiga puluh tiga septillion dua ratus dua puluh satu sextillion seratus sebelas quintillion seratus dua belas quadrillion seratus tujuh puluh enam trilion lima ratus empat belas bilion tiga ratus dua puluh satu juta tujuh ribu tiga ratus sepuluh"]
  ]
  # rubocop:enable Layout/LineLength

  ms_tests.each do |num, output|
    it "#{num} is equal to #{output}" do
      expect(num.humanize).to eq(output)
    end
  end

  describe 'when called on bigdecimal' do
    it 'reads correctly' do
      expect(BigDecimal(ms_tests.last.first).humanize).to eql(ms_tests.last.last)
    end
  end

  describe 'when called on conceptual number' do
    it 'reads correctly' do
      inf = Float::INFINITY
      neg_inf = -inf
      nan = inf + neg_inf

      expect(inf.humanize).to eql('tidak terbatas')
      expect(neg_inf.humanize).to eql('minus tidak terbatas')
      expect(nan.humanize).to eql('tidak ditakrifkan')
    end
  end
end
