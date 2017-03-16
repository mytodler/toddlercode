- dashboard: campaign_analysis_red
  title: Campaign Analysis Red
  layout: tile
  tile_size: 100




    #   - name: source
    #     title: 'Source'
    #
    #   - name: medium
    #     title: 'Medium'


  elements:
  - name: table_summarize_sessions
    title: Summary
    type: table
    model: themuse_redshift
    explore: user_stats_engagement_source
    dimensions: [user_stats_engagement_source.number_of_sessions]
    measures: [user_stats_engagement_source.count_oskar]
    listen:
      campaign: user_stats_engagement_source.campaign1
#         medium: user_stats_engagement_source.medium
#         source: user_stats_engagement_source.source
    sorts: [user_stats_engagement_source.number_of_sessions ]
#       show_view_names: false
