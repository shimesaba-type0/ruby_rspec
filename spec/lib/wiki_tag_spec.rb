# -*- encoding: utf-8 -*-
require 'spec_helper'

describe WikiTag do
  # let(:sample){ Sample.new }

  # describe "段落をつけて返す" do
  #   context "1行ブランク" do
  #     it {should eq "aa aa"}
  #   end
  #   it { should eq "Hello TDD BootCamp!" }
  # end
  
  describe "italicに整形" do
    subject { WikiTag.new }
    it { subject.change_italic("__").should eq "" }
    it { subject.change_italic("_ _").should eq "<i> </i>" }
    it { subject.change_italic('_aaa_').should eq "<i>aaa</i>" }
    it { subject.change_italic('_0aAあア漢字@_').should eq "<i>0aAあア漢字@</i>" }
  end
  describe "boldに整形" do
    subject { WikiTag.new }
    it { subject.change_bold("**").should eq "" }
    it { subject.change_bold("* *").should eq "<strong> </strong>" }
    it { subject.change_bold("*aaa*").should eq "<strong>aaa</strong>" }
    it { subject.change_bold("*0aAあア漢字@*").should eq "<strong>0aAあア漢字@</strong>" }
  end
end
