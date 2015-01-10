.class public Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field private mExtraValue:I

.field private mGroupFilter:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 9
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    const/16 v8, 0x118

    const/16 v7, 0xbe

    const/16 v6, 0xaa

    const/16 v5, 0xa0

    const/16 v4, 0x96

    .line 273
    if-nez p4, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, selection:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 381
    :cond_2
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_5

    .line 383
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 384
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_4
    const-string v2, "(link_type1!=\'com.sec.android.app.snsaccountfacebook.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountme2day.account_type\' AND link_type1!=\'com.sec.android.app.snsaccounttwitter.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountmyspace.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountlinkedin.account_type\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_5
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V

    .line 400
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0x125

    if-ne v2, v3, :cond_6

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 406
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_8

    .line 290
    :cond_7
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    :cond_8
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v6, :cond_9

    .line 293
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :cond_9
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_a

    .line 297
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, "sec_custom_dormant_contact==0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_a
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    .line 302
    const-string v2, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :pswitch_2
    const-string v2, "starred==1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_b

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_c

    .line 315
    :cond_b
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 318
    :cond_c
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v6, :cond_d

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_e

    .line 320
    :cond_d
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 323
    :cond_e
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    .line 324
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 332
    :pswitch_3
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 336
    :pswitch_4
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 344
    :pswitch_5
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_f

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_10

    .line 346
    :cond_f
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 348
    :cond_10
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v6, :cond_11

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_12

    .line 350
    :cond_11
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 352
    :cond_12
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    .line 353
    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 358
    :pswitch_6
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_phone_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 363
    :pswitch_7
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 368
    :pswitch_8
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v2, "has_email>0 and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 373
    :pswitch_9
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_phone_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v2, "(has_email>0 or has_phone_number>0) and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 528
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "selection"
    .parameter "filter"

    .prologue
    .line 411
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    .line 413
    .local v2, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 415
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_0
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_1
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 426
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_2
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 446
    .local v1, SIM_ZERO:I
    const/4 v0, 0x1

    .line 448
    .local v0, SIM_ONE:I
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 449
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 450
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 453
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_4
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_5
    return-void

    .line 433
    .end local v0           #SIM_ONE:I
    .end local v1           #SIM_ZERO:I
    :cond_6
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 434
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 436
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_7
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "partition"

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 512
    .local v1, ischecked:Z
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 513
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, contactId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, keyString:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    const/4 v1, 0x1

    .line 521
    .end local v0           #contactId:Ljava/lang/String;
    .end local v2           #keyString:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, v1}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 522
    return-void

    .line 518
    .restart local v0       #contactId:Ljava/lang/String;
    .restart local v2       #keyString:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 564
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 565
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 466
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 467
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v0

    .line 469
    .local v0, isGalSearchShowMore:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSelectionVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 473
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 476
    if-eqz v0, :cond_3

    .line 477
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 486
    :goto_1
    if-eqz v0, :cond_5

    .line 487
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V

    .line 492
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    if-eqz v0, :cond_6

    .line 495
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V

    .line 501
    :cond_1
    :goto_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isEasAccountPartition(I)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 502
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 507
    :goto_4
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 508
    return-void

    :cond_2
    move-object v2, v3

    .line 469
    goto :goto_0

    .line 478
    :cond_3
    int-to-long v4, p2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isEasAccountPartition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 482
    :cond_4
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 489
    :cond_5
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 497
    :cond_6
    invoke-virtual {p0, v1, p3, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    goto :goto_3

    .line 504
    :cond_7
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->hideGalTitleAndCompany()V

    goto :goto_4
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 88
    const-string v4, "InteractionContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 90
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 93
    const-string v2, ""

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 100
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 101
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 162
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 164
    const-string v3, "sort_key"

    .line 168
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 169
    return-void

    .line 105
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_5

    .line 106
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 147
    :goto_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0xfa

    if-ne v4, v5, :cond_3

    .line 149
    :cond_2
    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 152
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 116
    :cond_4
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 119
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_5
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_8

    .line 121
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_6

    .line 122
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "direct_share"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "block_contacts"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 145
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    :goto_3
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 125
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_6
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7

    .line 126
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "direct_share"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "block_contacts"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_3

    .line 130
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_7
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "direct_share"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_3

    .line 136
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_8
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0x125

    if-ne v4, v5, :cond_9

    .line 137
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "account_filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_3

    .line 142
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 157
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 158
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 159
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto/16 :goto_0

    .line 166
    :cond_b
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 269
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    const-wide/16 v6, 0x0

    .line 194
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 196
    .local v2, uri:Landroid/net/Uri;
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupFilter:Z

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_8

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, convertTitle:Ljava/lang/String;
    const-string v3, "vnd.sec.contact.agg.account_type"

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 221
    .end local v1           #convertTitle:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0x123

    if-ne v3, v4, :cond_b

    .line 222
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_9

    .line 223
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "block_contacts"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 238
    :cond_1
    :goto_1
    cmp-long v3, p2, v6

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 244
    :cond_2
    if-eqz p4, :cond_4

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_4

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-eq v3, v4, :cond_4

    .line 246
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 247
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_3

    .line 250
    const-string v3, "account_name"

    iget-object v4, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 251
    const-string v3, "account_type"

    iget-object v4, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 253
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 256
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_4
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0xfa

    if-ne v3, v4, :cond_6

    .line 258
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 262
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 264
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 265
    return-void

    .line 211
    .restart local v1       #convertTitle:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 215
    .end local v1           #convertTitle:Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-nez v3, :cond_0

    .line 216
    const-string v3, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 225
    :cond_9
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a

    .line 226
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "block_contacts"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1

    .line 229
    :cond_a
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1

    .line 233
    :cond_b
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0x125

    if-ne v3, v4, :cond_1

    .line 234
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountType:Ljava/lang/String;

    .line 556
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 558
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    .line 559
    :cond_0
    return-void
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 533
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    .line 534
    return-void
.end method

.method public setExtra(I)V
    .locals 0
    .parameter "extraValue"

    .prologue
    .line 550
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    .line 551
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
    .line 545
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 546
    return-void
.end method

.method public setTopDividerEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 568
    return-void
.end method
