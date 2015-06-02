require 'spec_helper'

module Geo
  describe Reference do
    let(:test_location) { Geo::OSM::Location.new('1234', 'Berlin', 4) }
    let(:test_discoveries) { [] }

    subject { Reference.new(test_location, test_discoveries)  }

    let(:proof) do
      {
        test_location.id => {
          human_readable_name: test_location.human_readable_name,
          administrative_level: test_location.administrative_level,
          discoveries: test_discoveries
        }
      }
    end

    context 'accessor' do
      it { should respond_to :location }
      it { should respond_to :discoveries }
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
