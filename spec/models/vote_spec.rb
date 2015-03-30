describe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        # this assumes that the method returns a boolean indicating success or failure
        up_vote1 = Vote.new(value: 1)
        down_vote = Vote.new(value: -1)
        up_vote2 = Vote.new(value: 5)

        expect(up_vote1.valid?).to eq (true)
        expect(down_vote.valid?).to eq(true)
        expect(up_vote2.valid?).to eq(false)
      end
    end
  end
end