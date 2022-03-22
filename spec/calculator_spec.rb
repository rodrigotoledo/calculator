require 'spec_helper'
require 'calculator'

describe '::calculator' do
  context "+ operations" do
    it { expect(calculate("1+1")).to eql(2) }
    it { expect(calculate("2+2")).to eql(4) }
    it { expect(calculate("3+2")).to eql(5) }
  end

  context "- operations" do
    it { expect(calculate("1-1")).to eql(0) }
    it { expect(calculate("2-1")).to eql(1) }
    it { expect(calculate("3-1")).to eql(2) }
  end

  context "* operations" do
    it { expect(calculate("1*1")).to eql(1) }
    it { expect(calculate("2*2")).to eql(4) }
    it { expect(calculate("3*2")).to eql(6) }
  end

  context "/ operations" do
    it { expect(calculate("1/1")).to eql(1) }
    it { expect(calculate("8/2")).to eql(4) }
  end
end