require 'spec_helper'

describe MinimedRF::GlucoseSensorMessage do

  it "should decode fields" do
    hex_data = "a259705504a24117043a0e080b003d3d00015b030105d817790a0f00000300008b1702000e080b000071"
    packet = MinimedRF::Packet.from_hex(hex_data)
    message = packet.to_message
    expect(message.glucose).to eq 123
    expect(message.previous_glucose).to eq 123
    expect(message.timestamp).to eq Time.parse('2014-08-11 23:02:00')
  end

end
