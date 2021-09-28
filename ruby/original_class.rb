#"身の回りのモノをクラスとして表現し、コードする
#その際に複数のクラスを作成し関連づける
#（継承やmoduleは使わない / 生物ではないモノにする）"


#=== テレビ本体 ===
class Television

  MAX_VOLUME = 10
  MIN_VOLUME = 0

  def initialize(number_channel)
    @channels = 0..number_channel
    @channel = 1
    @volume = 5
    @power = false
  end


  def turn_on_receive
    @power = true
    puts "〜〜〜　　電源オン　　〜〜〜"
    puts "ただいまチャンネル#{@channel}です"
  end

  def turn_off_receive
    @power = false
    puts "〜〜〜　　電源オフ　　〜〜〜"
  end

  def volume_up_receve
    return no_power_warning_private unless @power 
    return puts "＊＊＊　現在最大音量#{@volume}　＊＊＊" if @volume == MAX_VOLUME
    #通常処理
    @volume += 1 
    puts "〈音量 : #{@volume}〉"
  end


  def volume_down_receve
    return no_power_warning_private unless @power 
    return puts "＊＊＊　現在最小音量#{@volume}　＊＊＊" if @volume == MIN_VOLUME
    #通常処理
    @volume -= 1 
    puts "〈音量 : #{@volume}〉"
  end

  def change_channel_receive(channel_order)
    return no_power_warning_private unless @power 
    return puts "チャンネルを受信できません" unless @channels.include?(channel_order)
    #通常処理
    @channel = channel_order 
    puts "\nただいまチャンネル#{@channel}です"
  end

  private
  def no_power_warning_private
    puts "＊＊＊　電源がついていません　＊＊＊"
  end
end



#=== テレビのリモコン ===
class Television_remote
  def initialize(television_name)
    @target_television_name = television_name
  end


  def turn_on_send
    @target_television_name.turn_on_receive
  end

  def turn_off_send
    @target_television_name.turn_off_receive
  end

  def volume_up_send
    @target_television_name.volume_up_receve
  end

  def volume_down_send
    @target_television_name.volume_down_receve
  end

  def change_channel_send(channel_order)
    @target_television_name.change_channel_receive(channel_order)
  end
end