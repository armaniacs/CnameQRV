class CnameCheckController < ApplicationController
  def request_fetch
    result = Net::HTTP.get('localhost','/json/cname/all', 8080)

    s1 = ''

    pj = JSON.parse(result)
    pj.each do |hs|
      hs.each do |k,v|
        s1 += k.to_s + ':' + v.to_s + '<br>'
      end

    end
    render :text => s1
  end

  def ip
    s1 = ''
    @tip = params['ip']
    headers = {
      'Host'=>'cdn.debian.net',
      'User-Agent' => 'Debian-cdn-cname-ping/0.1'
    }
    result = Net::HTTP.start(@tip) do |h|
      s1 = h.get('/debian/project/trace/ftp-master.debian.org', headers).body
    end
    render :text => s1
  end
end
