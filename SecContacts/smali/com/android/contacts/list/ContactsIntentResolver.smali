.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 60
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 16
    .parameter "intent"

    .prologue
    .line 63
    new-instance v9, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v9}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 65
    .local v9, request:Lcom/android/contacts/list/ContactsRequest;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, action:Ljava/lang/String;
    const-string v13, "ContactsIntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Called with action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v13, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 70
    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 568
    :cond_0
    :goto_0
    const-string v13, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 569
    .local v11, title:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 570
    invoke-virtual {v9, v11}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 572
    :cond_1
    return-object v9

    .line 71
    .end local v11           #title:Ljava/lang/String;
    :cond_2
    const-string v13, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 72
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v13, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 74
    const/16 v13, 0x11

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v13, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 76
    const/16 v13, 0x1e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v13, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 78
    const/16 v13, 0x28

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 79
    :cond_6
    const-string v13, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 80
    const/16 v13, 0x32

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 81
    :cond_7
    const-string v13, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 82
    const/16 v13, 0x14

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 86
    const-string v13, "com.android.contacts.extra.GROUP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, groupName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 88
    invoke-virtual {v9, v6}, Lcom/android/contacts/list/ContactsRequest;->setGroupName(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_8
    const-string v13, "ContactsIntentResolver"

    const-string v14, "Intent missing a required extra: com.android.contacts.extra.GROUP"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setValid(Z)V

    goto :goto_0

    .line 93
    .end local v6           #groupName:Ljava/lang/String;
    :cond_9
    const-string v13, "android.intent.action.PICK"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, resolvedType:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.dir/contact"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 96
    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 122
    :cond_a
    :goto_1
    const-string v13, "phone-need-call"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 124
    const/16 v13, 0x19

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 97
    :cond_b
    const-string v13, "vnd.android.cursor.dir/person"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 98
    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 99
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    .line 100
    :cond_c
    const-string v13, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 101
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    .line 102
    :cond_d
    const-string v13, "vnd.android.cursor.dir/phone"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 103
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 104
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    .line 105
    :cond_e
    const-string v13, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 106
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 108
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto :goto_1

    .line 109
    :cond_f
    const-string v13, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 110
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 111
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    .line 112
    :cond_10
    const-string v13, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 113
    const/16 v13, 0x69

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    .line 114
    :cond_11
    const-string v13, "text/x-vcard"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 116
    const/16 v13, 0xfa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 117
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 118
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 119
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_1

    .line 127
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_12
    const-string v13, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, component:Ljava/lang/String;
    const-string v13, "alias.DialShortcut"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 130
    const/16 v13, 0x78

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 131
    :cond_13
    const-string v13, "alias.MessageShortcut"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 132
    const/16 v13, 0x82

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 134
    :cond_14
    const/16 v13, 0x6e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 136
    .end local v2           #component:Ljava/lang/String;
    :cond_15
    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, type:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.item/contact"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 139
    const-string v13, "include-readonly-contact"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 141
    const/16 v13, 0x1a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 146
    :goto_2
    const/16 v13, 0x46

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 148
    const-string v13, "include-profile"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 150
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto/16 :goto_0

    .line 144
    :cond_16
    const/16 v13, 0x18

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto :goto_2

    .line 153
    :cond_17
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto/16 :goto_0

    .line 154
    :cond_18
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 155
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 156
    :cond_19
    const-string v13, "vnd.android.cursor.item/phone"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 157
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 158
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 159
    :cond_1a
    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 160
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 161
    :cond_1b
    const-string v13, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 162
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 163
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 164
    :cond_1c
    const-string v13, "vnd.android.cursor.item/person"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 165
    const/16 v13, 0x46

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 166
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 168
    .end local v12           #type:Ljava/lang/String;
    :cond_1d
    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 170
    .local v4, extra:Landroid/os/Bundle;
    const-string v13, "hidecreatelabel"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 171
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    .line 175
    :goto_3
    const/16 v13, 0x50

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 173
    :cond_1e
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    goto :goto_3

    .line 176
    .end local v4           #extra:Landroid/os/Bundle;
    :cond_1f
    const-string v13, "android.intent.action.SEARCH"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 177
    const-string v13, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, query:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 181
    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 183
    :cond_20
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 184
    const-string v13, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    :cond_21
    invoke-virtual {v9, v8}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 187
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 188
    .end local v8           #query:Ljava/lang/String;
    :cond_22
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 190
    .restart local v10       #resolvedType:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.dir/contact"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    const-string v13, "vnd.android.cursor.dir/person"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 192
    :cond_23
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 194
    :cond_24
    const/16 v13, 0x8c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 196
    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 199
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_25
    const-string v13, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 203
    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 205
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v5, :cond_26

    .line 206
    const-string v13, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 208
    const-string v13, "originalRequest"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/ContactsRequest;

    .line 210
    .local v7, originalRequest:Lcom/android/contacts/list/ContactsRequest;
    if-eqz v7, :cond_26

    .line 211
    invoke-virtual {v9, v7}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    .line 215
    .end local v7           #originalRequest:Lcom/android/contacts/list/ContactsRequest;
    :cond_26
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 220
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_27
    const-string v13, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 222
    .local v3, data:Landroid/net/Uri;
    const/16 v13, 0x8c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 223
    invoke-virtual {v9, v3}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 224
    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 228
    .end local v3           #data:Landroid/net/Uri;
    :cond_28
    const-string v13, "intent.action.INTERACTION_TAB"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    const-string v13, "intent.action.INTERACTION_LIST"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    const-string v13, "intent.action.INTERACTION_TOPMENU"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4d

    .line 232
    :cond_29
    const-string v13, "settings-phone-multi"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 234
    const/16 v13, 0xbe

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 235
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 236
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 237
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    .line 238
    :cond_2a
    const-string v13, "email-phone-multi"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 240
    const/16 v13, 0x96

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 241
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 243
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 244
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 246
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 249
    :cond_2b
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 251
    :cond_2c
    const-string v13, "email-multi"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 253
    const/16 v13, 0xa0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 254
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 256
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 257
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 259
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 262
    :cond_2d
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 264
    :cond_2e
    const-string v13, "phone-multi"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 266
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 267
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 269
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 270
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 272
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 275
    :cond_2f
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 277
    :cond_30
    const-string v13, "vcard-multi"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    .line 279
    const/16 v13, 0xf0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 280
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 281
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 282
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 283
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 285
    :cond_31
    const-string v13, "vip-email"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 287
    const/16 v13, 0x118

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 288
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 289
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 290
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 291
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 293
    :cond_32
    const-string v13, "phone"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 295
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 296
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 297
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 298
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    .line 299
    :cond_33
    const-string v13, "email-phone"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 301
    const/16 v13, 0x96

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 302
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 303
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 304
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 305
    const/16 v13, 0x16

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 306
    :cond_34
    const-string v13, "namecard"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 308
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 309
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 310
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 311
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 312
    const/16 v13, 0x17

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 313
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 314
    :cond_35
    const-string v13, "group-phone-email"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 316
    const/16 v13, 0x96

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 317
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 318
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 319
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 320
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 321
    :cond_36
    const-string v13, "group-email"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    .line 323
    const/16 v13, 0xa0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 324
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 325
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 326
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 327
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 330
    :cond_37
    const-string v13, "pick-contact-from-tab"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    .line 332
    const/16 v13, 0xb4

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 333
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 335
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 336
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 338
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 343
    :goto_4
    const/16 v13, 0x11

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 344
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 341
    :cond_38
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_4

    .line 347
    :cond_39
    const-string v13, "directshare-multi"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 348
    const/16 v13, 0x123

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 349
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 351
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 352
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 354
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 359
    :goto_5
    const/16 v13, 0x1e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 360
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 357
    :cond_3a
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_5

    .line 361
    :cond_3b
    const-string v13, "block-directshare"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 362
    const/16 v13, 0x123

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 363
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 364
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 365
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 366
    const/16 v13, 0x1f

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 367
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 368
    :cond_3c
    const-string v13, "unblock-directshare"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 369
    const/16 v13, 0x123

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 370
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 371
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 372
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 373
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 374
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 378
    :cond_3d
    const-string v13, "pick-multi-commtools"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4a

    .line 379
    const-string v13, "call"

    const-string v14, "toolitem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 380
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 381
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 383
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 384
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 386
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 391
    :goto_6
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 392
    const/16 v13, 0x21

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 393
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 389
    :cond_3e
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_6

    .line 395
    :cond_3f
    const-string v13, "vt"

    const-string v14, "toolitem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 396
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 397
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 399
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 400
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 402
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 407
    :goto_7
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 408
    const/16 v13, 0x22

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 409
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 405
    :cond_40
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_7

    .line 411
    :cond_41
    const-string v13, "msg"

    const-string v14, "toolitem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 412
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Message_DisableMMS"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 414
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 418
    :goto_8
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 420
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 421
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 423
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 428
    :goto_9
    const/16 v13, 0x23

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 416
    :cond_42
    const/16 v13, 0x96

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_8

    .line 426
    :cond_43
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_9

    .line 430
    :cond_44
    const-string v13, "email"

    const-string v14, "toolitem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 431
    const/16 v13, 0xa0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 432
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 434
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 435
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_45

    .line 437
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 442
    :goto_a
    const/16 v13, 0x24

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 440
    :cond_45
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_a

    .line 444
    :cond_46
    const-string v13, "chaton"

    const-string v14, "toolitem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_48

    .line 445
    const/16 v13, 0x125

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 446
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 448
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 449
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 451
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 456
    :goto_b
    const/16 v13, 0x25

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 457
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 454
    :cond_47
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_b

    .line 459
    :cond_48
    const-string v13, "chatonv"

    const-string v14, "toolitem"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 460
    const/16 v13, 0x125

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 461
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 463
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 464
    const-string v13, "easy-mode"

    const-string v14, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 466
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 471
    :goto_c
    const/16 v13, 0x26

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 472
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 469
    :cond_49
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_c

    .line 476
    :cond_4a
    const-string v13, "intent.action.EXPORT_TO_INTERNEL_SDCARD"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 478
    const/16 v13, 0x12d

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 479
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 480
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 481
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 482
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 483
    :cond_4b
    const-string v13, "intent.action.EXPORT_TO_EXTERNEL_SDCARD"

    const-string v14, "additional"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 485
    const/16 v13, 0x12e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 486
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 487
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 488
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 489
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 491
    :cond_4c
    const/16 v13, 0xb4

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 492
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 493
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 494
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 495
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 497
    :cond_4d
    const-string v13, "intent.action.INTERACTION_LIST"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 498
    const/16 v13, 0x104

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 499
    :cond_4e
    const-string v13, "intent.action.EXPORT_SIM_CONTACT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    .line 500
    const/16 v13, 0x12c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 501
    :cond_4f
    const-string v13, "intent.action.IMPORT_SIM_CONTACT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_50

    .line 502
    const/16 v13, 0x136

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 503
    const-string v13, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 504
    const-string v13, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_50
    const-string v13, "intent.action.DELETE_SIM_CONTACT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_51

    .line 506
    const/16 v13, 0x15e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 507
    :cond_51
    const-string v13, "android.intent.action.SIM_IMPORT_START"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    .line 509
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 511
    const/16 v13, 0x136

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 512
    const-string v13, "vnd.sec.contact.phone"

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 513
    const-string v13, "vnd.sec.contact.phone"

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :cond_52
    const-string v13, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 516
    const/16 v13, 0x15e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 517
    :cond_53
    const-string v13, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54

    .line 518
    const/16 v13, 0x15f

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 520
    :cond_54
    const-string v13, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55

    .line 521
    const/16 v13, 0x190

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 522
    :cond_55
    const-string v13, "intent.action.IMPORT_SIM2_CONTACT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 523
    const/16 v13, 0x19a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 524
    const-string v13, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 525
    const-string v13, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_56
    const-string v13, "intent.action.DELETE_SIM2_CONTACT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_57

    .line 527
    const/16 v13, 0x1c2

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 529
    :cond_57
    const-string v13, "intent.action.INTERACTION_ICE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58

    .line 530
    const/16 v13, 0x122

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 531
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 532
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 533
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    .line 535
    :cond_58
    const-string v13, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 536
    const/16 v13, 0x21

    const-string v14, "toolitem"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_59

    .line 537
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 538
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 539
    const/16 v13, 0x21

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 540
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 542
    :cond_59
    const/16 v13, 0x22

    const-string v14, "toolitem"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_5a

    .line 543
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 544
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 545
    const/16 v13, 0x22

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 546
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 548
    :cond_5a
    const/16 v13, 0x23

    const-string v14, "toolitem"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_5c

    .line 549
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Message_DisableMMS"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 551
    const/16 v13, 0xaa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 555
    :goto_d
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 556
    const/16 v13, 0x23

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 553
    :cond_5b
    const/16 v13, 0x96

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_d

    .line 558
    :cond_5c
    const/16 v13, 0x24

    const-string v14, "toolitem"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 559
    const/16 v13, 0xa0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 560
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 561
    const/16 v13, 0x24

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0
.end method
