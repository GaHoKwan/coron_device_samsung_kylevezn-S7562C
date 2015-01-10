.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "GroupMemberBrowseListAdapter.java"


# static fields
.field protected static final PROJECTION_ICE_CONTACT:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFromEmergencyDial:Z

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mIsOnlyDefaultAvailable:Z

.field protected mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "default_emergency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_ICE_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    const-string v0, "GroupMemberBrowseListAdapter"

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 4
    .parameter "loader"
    .parameter "directoryId"
    .parameter "mode"

    .prologue
    .line 333
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDial:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsOnlyDefaultAvailable:Z

    if-eqz v2, :cond_2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, selection:Ljava/lang/StringBuilder;
    const-string v2, "default_emergency"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .end local v0           #selection:Ljava/lang/StringBuilder;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDial:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsOnlyDefaultAvailable:Z

    if-nez v2, :cond_3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .restart local v0       #selection:Ljava/lang/StringBuilder;
    const-string v2, "has_phone_number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v0           #selection:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v2, 0x4

    if-ne p4, v2, :cond_0

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 350
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 3
    .parameter "mode"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "configureUri : groupInfo is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v1, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->generateGroupMemberFilterUriBuilder(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 360
    .local v0, builder:Landroid/net/Uri$Builder;
    return-object v0
.end method


# virtual methods
.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 171
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 172
    const/16 v1, 0xf

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 173
    .local v0, defaultEmergency:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 174
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .end local v0           #defaultEmergency:I
    :goto_0
    return-void

    .line 178
    .restart local v0       #defaultEmergency:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0204be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 183
    .end local v0           #defaultEmergency:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "position"
    .parameter "cursor"

    .prologue
    const v9, 0x7f0d028a

    const/4 v8, 0x0

    const/16 v7, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    iget v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    .line 190
    invoke-virtual {p1, v8}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 191
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 192
    .local v0, defaultEmergency:I
    if-nez p2, :cond_3

    .line 193
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0289

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 200
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 203
    .local v1, nextDefaultEmergency:I
    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 209
    .end local v1           #nextDefaultEmergency:I
    :goto_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    .end local v0           #defaultEmergency:I
    :goto_3
    return-void

    .line 197
    .restart local v0       #defaultEmergency:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .restart local v1       #nextDefaultEmergency:I
    :cond_1
    move v3, v4

    .line 203
    goto :goto_1

    .line 206
    .end local v1           #nextDefaultEmergency:I
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2

    .line 212
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 215
    .local v2, prevDefaultEmergency:I
    if-eq v0, v2, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 222
    :goto_4
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 226
    .end local v2           #prevDefaultEmergency:I
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 227
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 229
    .restart local v1       #nextDefaultEmergency:I
    if-ne v0, v1, :cond_6

    :goto_6
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 233
    .end local v1           #nextDefaultEmergency:I
    :goto_7
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_3

    .line 219
    .restart local v2       #prevDefaultEmergency:I
    :cond_4
    invoke-virtual {p1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_4

    .line 224
    .end local v2           #prevDefaultEmergency:I
    :cond_5
    invoke-virtual {p1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1       #nextDefaultEmergency:I
    :cond_6
    move v3, v4

    .line 229
    goto :goto_6

    .line 231
    .end local v1           #nextDefaultEmergency:I
    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_7

    .line 237
    .end local v0           #defaultEmergency:I
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_3
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 140
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->DelListCallButton()V

    .line 145
    :cond_0
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 243
    instance-of v0, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 244
    check-cast v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v4

    .line 248
    .local v4, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getMode()I

    move-result v5

    .line 249
    .local v5, mode:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, query:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 252
    const-string v7, ""

    .line 254
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 259
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 260
    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 294
    .end local v7           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 295
    const-string v8, "sort_key"

    .line 300
    .local v8, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v8}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 301
    return-void

    .line 264
    .end local v8           #sortOrder:Ljava/lang/String;
    .restart local v7       #query:Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 265
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 266
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 267
    const-string v0, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    const-string v0, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getDirectoryResultLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 278
    :goto_2
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 279
    const/4 v0, 0x5

    if-ne v5, v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Loader searchice projection"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_ICE_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 274
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 276
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    .line 283
    :cond_4
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v6           #builder:Landroid/net/Uri$Builder;
    .end local v7           #query:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 289
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;I)V

    .line 290
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 297
    :cond_6
    const-string v8, "sort_key_alt"

    .restart local v8       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;I)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"
    .parameter "mode"

    .prologue
    .line 324
    const/4 v0, 0x5

    if-ne p5, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Loader ice projection"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_ICE_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"
    .parameter "groupType"

    .prologue
    const-wide/16 v3, 0x0

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "configureUri : groupInfo is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v1, p4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->generateGroupMemberUri(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri;

    move-result-object v0

    .line 310
    .local v0, uri:Landroid/net/Uri;
    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getLinkedAccounts(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, linkedAccounts:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 127
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_0
    return-object v1
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    return v0
.end method

.method public isDefaultICE(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 114
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 107
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_1

    .line 113
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_1
.end method

.method public isGroupInfoLoaded()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 154
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/DefaultContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "DEFAULT"

    const-string v2, "TABLET_BLACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 158
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    const v2, 0x7f020725

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeaderBackGround(I)V

    move-object v1, v0

    .line 159
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    const v2, 0x7f02073e

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setHorizontalDivider(I)V

    .line 165
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 161
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    const v2, 0x7f020727

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeaderBackGround(I)V

    move-object v1, v0

    .line 162
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    const v2, 0x7f02073f

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setHorizontalDivider(I)V

    goto :goto_0
.end method

.method public setFromEmergencyDial(ZZ)V
    .locals 0
    .parameter "fromEmergencyDial"
    .parameter "isOnlyDefaultAvailable"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDial:Z

    .line 120
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsOnlyDefaultAvailable:Z

    .line 121
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 102
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    .line 94
    return-void
.end method
