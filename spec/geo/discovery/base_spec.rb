require 'spec_helper'
module Geo
  module Discovery
    describe Base do
      [
        {subject: Geo::Discovery::Base.new('s', 't', {}),
         proof:{ source: 's', time: 't' } },
        {subject: Geo::Discovery::Base.new('s', 't', { foo: "bar", baz: "oink"} ),
         proof:{ source: 's', time: 't',  foo: "bar", baz: "oink" } }
      ].each do |fixture|

        subject { fixture[:subject] }
        let (:proof) { fixture[:proof] }

        context 'accessor' do
          it { should respond_to :source }
          it { should respond_to :time }
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
end
