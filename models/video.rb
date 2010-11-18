class Video
  include Mongoid::Document
  
  def self.unique_keys
    [:timestamp_id]
  end
  
  def self.filter_keys
    {
      :legislative_day => String,
      :timestamp_id => String,
      :duration => Integer,
      :"clips.duration" => Integer
    }
  end
  
  def self.order_keys
    [:legislative_day]
  end
  
  def self.basic_fields
    [:duration, :legislative_day, :timestamp_id, :clip_urls]
  end
end