.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionGroupMemberSelectListAdapter.java"


# static fields
.field private static CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

.field protected static final FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

.field protected static final PROJECTION_ICE:[Ljava/lang/String;


# instance fields
.field private mActionCode:I

.field protected mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mMode:I

.field protected mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xf

    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

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

    const-string v1, "default_emergency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

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

    const-string v1, "default_emergency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

    .line 114
    sput v3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 118
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 4
    .parameter "loader"
    .parameter "directoryId"
    .parameter "mode"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v0, selection:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_2

    .line 279
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    :goto_0
    const/4 v2, 0x4

    if-ne p4, v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_5

    .line 306
    :goto_1
    return-void

    .line 281
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_3

    .line 282
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x96

    if-ne v2, v3, :cond_4

    .line 285
    const-string v2, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :cond_4
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x122

    if-ne v2, v3, :cond_0

    .line 288
    const-string v2, "default_emergency<2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :cond_5
    const/4 v2, 0x5

    if-eq p4, v2, :cond_6

    .line 302
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;)V

    .line 304
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 6
    .parameter "mode"

    .prologue
    .line 362
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v3, :cond_0

    .line 363
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 370
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    packed-switch p1, :pswitch_data_0

    .line 410
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :pswitch_0
    const-string v3, "content://com.android.contacts/groups/not_assigned/contacts_filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 377
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 413
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_0
    return-object v0

    .line 382
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 384
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 385
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 389
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 391
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 392
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 396
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_3
    const-string v3, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 397
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 398
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 402
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 404
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 406
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto/16 :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSimFeatureSelection(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "selection"

    .prologue
    .line 310
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    .line 312
    .local v2, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 314
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_1
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 323
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_2
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 344
    .local v1, SIM_ZERO:I
    const/4 v0, 0x1

    .line 346
    .local v0, SIM_ONE:I
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 347
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 348
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 351
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_4
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_5
    return-void

    .line 332
    .end local v0           #SIM_ONE:I
    .end local v1           #SIM_ZERO:I
    :cond_6
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 333
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 335
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_7
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "checked"
    .parameter "partition"

    .prologue
    const/4 v4, 0x0

    .line 452
    invoke-super {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 453
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 454
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, contactId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, keyString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 462
    .end local v0           #contactId:Ljava/lang/String;
    .end local v1           #keyString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 459
    .restart local v0       #contactId:Ljava/lang/String;
    .restart local v1       #keyString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 447
    :goto_0
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    .line 449
    return-void

    .line 444
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindSectionHeaderForICE(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "position"
    .parameter "cursor"

    .prologue
    const v7, 0x7f0d028a

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 466
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 467
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 468
    .local v0, defaultEmergency:I
    if-nez p2, :cond_3

    .line 469
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0289

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 474
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 475
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 476
    .local v1, nextDefaultEmergency:I
    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 480
    .end local v1           #nextDefaultEmergency:I
    :goto_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 502
    :goto_3
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .restart local v1       #nextDefaultEmergency:I
    :cond_1
    move v3, v4

    .line 476
    goto :goto_1

    .line 478
    .end local v1           #nextDefaultEmergency:I
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2

    .line 483
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 484
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 485
    .local v2, prevDefaultEmergency:I
    if-eq v0, v2, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 491
    :goto_4
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 495
    .end local v2           #prevDefaultEmergency:I
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 496
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 497
    .restart local v1       #nextDefaultEmergency:I
    if-ne v0, v1, :cond_6

    :goto_6
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 501
    .end local v1           #nextDefaultEmergency:I
    :goto_7
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_3

    .line 488
    .restart local v2       #prevDefaultEmergency:I
    :cond_4
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_4

    .line 493
    .end local v2           #prevDefaultEmergency:I
    :cond_5
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1       #nextDefaultEmergency:I
    :cond_6
    move v3, v4

    .line 497
    goto :goto_6

    .line 499
    .end local v1           #nextDefaultEmergency:I
    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_7
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 4
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 419
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 420
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getUpperCaseQueryString()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 425
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x122

    if-ne v1, v3, :cond_3

    .line 426
    invoke-virtual {p0, v0, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindSectionHeaderForICE(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 431
    :goto_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 432
    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    .line 436
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 437
    return-void

    :cond_2
    move-object v1, v2

    .line 420
    goto :goto_0

    .line 429
    :cond_3
    invoke-virtual {p0, v0, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getMode()I

    move-result v1

    .line 151
    .local v1, mode:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 154
    const-string v2, ""

    .line 156
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 161
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 162
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 198
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 199
    const-string v3, "sort_key"

    .line 204
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 205
    return-void

    .line 166
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 167
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 168
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 183
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v5, 0x122

    if-ne v4, v5, :cond_3

    .line 184
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 189
    :goto_3
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 175
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 176
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    .line 187
    :cond_3
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 192
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    .line 194
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 201
    :cond_5
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v1, 0x122

    if-ne v0, v1, :cond_0

    .line 264
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 7
    .parameter "loader"
    .parameter "directoryId"
    .parameter "mode"

    .prologue
    const-wide/16 v5, 0x0

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, title:Ljava/lang/String;
    packed-switch p4, :pswitch_data_0

    .line 246
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :pswitch_0
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    cmp-long v2, p2, v5

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 254
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 259
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 222
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 228
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 234
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_3
    const-string v2, "content://com.android.contacts/contacts/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 239
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 242
    goto/16 :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mMode:I

    return v0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 507
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    .line 508
    return-void
.end method

.method protected setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, exceptedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 136
    :cond_0
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 130
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 121
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mMode:I

    .line 122
    return-void
.end method

.method protected setModifiedMemeberIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, modifiedMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 142
    :cond_0
    return-void
.end method

.method public setSelctedContactHashMap(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 146
    return-void
.end method
