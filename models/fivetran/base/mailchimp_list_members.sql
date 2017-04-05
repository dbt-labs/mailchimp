select
    md5(list || email) as id,
    list as list_id,
    email as email_address
from {{var('list_members_table')}}
