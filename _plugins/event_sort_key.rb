Jekyll::Hooks.register :site, :pre_render do |site|
  site.pages.each do |page|
    event = page.data['event']
    next unless event && event['start']
    event['sort_key'] = (event['start']['dateTime'] || event['start']['date']).to_s
  end
end
