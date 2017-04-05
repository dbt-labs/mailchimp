select

    id,
    email_address,
    fname,
    lname,
    unique_email_id,
    status,
    member_rating,
    timestamp_opt as opt_in_at


from {{var('members_table')}}
