#"身の回りのモノをクラスとして表現し、コードする
#その際に複数のクラスを作成し関連づける
#（継承やmoduleは使わない / 生物ではないモノにする）"

class Television
  def initialize(number_channel)
    @channels = 0..number_channel
    @channel = 1
    @volume = 5
    @max_volume = 10
    @min_volume = 0
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
    if @power
      if @volume < @max_volume 
        @volume += 1 
        puts "〈音量 : #{@volume}〉"
      else
        puts "＊＊＊　現在最大音量#{@volume}　＊＊＊"
      end
    else
      no_power_warning_private
    end
  end

  def volume_down_receve
    if @power
      if @volume > @min_volume
        @volume -= 1 
        puts "〈音量 : #{@volume}〉"
      else
        puts "＊＊＊　現在最小音量#{@volume}　＊＊＊"
      end
    else
      no_power_warning_private
    end
  end

  def change_channel_receive(channel_order)
    if @power
      if @channels.include?(channel_order)
        @channel = channel_order 
        puts "\nただいまチャンネル#{@channel}です"
      else
       puts "チャンネルを受信できません"
      end
    else
      no_power_warning_private
    end
  end


  private
  def no_power_warning_private
    puts "＊＊＊　電源がついていません　＊＊＊"
  end
end

class Television_remote
  def initialize(tv_name)
    @target_tv_name = tv_name
  end


  def turn_on_send
    @target_tv_name.turn_on_receive
  end

  def turn_off_send
    @target_tv_name.turn_off_receive
  end

  def volume_up_send
    @target_tv_name.volume_up_receve
  end

  def volume_down_send
    @target_tv_name.volume_down_receve
  end

  def change_channel_send(channel_order)
    @target_tv_name.change_channel_receive(channel_order)
  end
end



#クラスからインスタンス作成
test_tv = Television.new(5)
test_tv_remote = Television_remote.new(test_tv)

puts "\n【通常操作】"
#電源をつける
test_tv_remote.turn_on_send
#音量調整
test_tv_remote.volume_up_send
test_tv_remote.volume_down_send
#チャンネル変更
test_tv_remote.change_channel_send(5)
test_tv_remote.change_channel_send(10)
#電源オフ
test_tv_remote.turn_off_send

puts "\n【警告表示】"
#電源がついていない状況で音量調整、チェンネル変更
test_tv_remote.volume_up_send
test_tv_remote.volume_down_send
test_tv_remote.change_channel_send(5)
test_tv_remote.change_channel_send(10)

#最大音量　最小音量
test_tv_remote.turn_on_send
6.times{
  test_tv_remote.volume_up_send
}
11.times{
  test_tv_remote.volume_down_send
}
test_tv_remote.turn_off_send

