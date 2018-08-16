# frozen_string_literal: true

shared_examples_for 'a correctly rendered remove link' do |options|
  context 'the rendered link' do
    before do
      default_options = {
        href: '#',
        class: 'remove_fields dynamic',
        text: 'remove something',
        extra_attributes: {}
      }
      @options = default_options.merge options

      doc = Nokogiri::HTML(@html)
      @link = doc.at('a')
    end

    it 'has a correct href' do
      expect(@link.attribute('href').value).to eq(@options[:href])
    end

    it 'has a correct classes' do
      expected = Array(@options[:class]).collect { |k| k.split(' ') }.flatten.uniq
      actual = Array(@link.attribute('class').value).collect { |k| k.split(' ') }.flatten.uniq
      expect(expected - actual).to be_empty
    end

    it 'has the correct text' do
      expect(@link.text).to eq(@options[:text])
    end

    it 'sets extra attributes correctly' do
      @options[:extra_attributes].each do |key, value|
        expect(@link.attribute(key).value).to eq(value)
      end
    end
  end
end
