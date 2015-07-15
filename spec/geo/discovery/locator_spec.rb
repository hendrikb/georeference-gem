require 'spec_helper'
module Geo
  module Discovery
    describe Locator do
      let(:test_date) {
        DateTime.now
      }

      subject{
        Geo::Discovery::Locator.new('http://example.com/testpage',
                                    4, test_date, 'This is the proof',
                                    additional_field: "additional value" )
      }
      let(:proof) do
        {
          url: 'http://example.com/testpage',
          byte_offset: 4,
          timestamp: test_date,
          proof: "This is the proof",
          additional_field: "additional value"
        }
      end

      context 'accessor' do
        it { should respond_to :url }
        it { should respond_to :byte_offset }
        it { should respond_to :timestamp }
        it { should respond_to :proof }
      end
      context 'instance method' do
        context '#to_hash' do
          it { should respond_to :to_hash }
          it 'returns a hash' do
            expect(subject.to_hash).to be_a_kind_of(Hash)
          end

          it "returns a hash that represents the reference's external facts" do
            expect(subject.to_hash).to eq(proof)
          end
          context '#to_json' do
            it { should respond_to :to_json }
            it 'returns a String' do
              expect(subject.to_json).to be_a_kind_of(String)
            end

            it 'returns the JSON representation of the hash' do
              expect(subject.to_json).to eq(proof.to_json)
            end
          end
        end
      end
    end
  end
end

