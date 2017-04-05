select

    id,
    list_id,
    "type" as campaign_type,
    status,
    emails_sent as sent,
    title,
    subject_line as subject,
    create_time as created_at,
    send_time as sent_at

from {{var('campaigns_table')}}
