describe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        # this assumes that the method returns a boolean indicating success or failure
        down_vote = Vote(-1)
        expect(down_vote).to eq(true)

        up_vote1 = Vote(-1)
        expect(up_vote1).to eq(true)

        up_vote2 = Vote(4)
        expect(up_vote2.to eq(false)

      end
    end
  end
end