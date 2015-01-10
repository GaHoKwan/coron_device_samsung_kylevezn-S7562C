.class public Lcom/android/contacts/interactions/AddToRejectListInteraction;
.super Landroid/app/Fragment;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    }
.end annotation


# static fields
.field public static final AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mActive:Z

.field private mBlackListSizeOverDialog:Landroid/app/AlertDialog;

.field private mContactUri:Landroid/net/Uri;

.field private mContactUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsAdd:Z

.field private mIsAdds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 771
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->clearJobs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/interactions/AddToRejectListInteraction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getCountOfTotalBlackList()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method

.method private checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 581
    iget-object v1, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 582
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    .line 587
    :goto_0
    return-void

    .line 584
    :cond_0
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 585
    .local v0, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private clearJobs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 202
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 203
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 204
    return-void
.end method

.method private executeNextJob()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 191
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method

.method private findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 22
    .parameter "result"

    .prologue
    .line 459
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 460
    .local v9, contactId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 462
    .local v18, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v21, samePhoneNumContactsIdsArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v20, samePhoneNumContactsArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v19, samePhoneNumArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v13, idsBuilder:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 468
    if-nez v11, :cond_0

    .line 469
    const-string v2, " ( data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v2, "\'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 471
    :cond_0
    const-string v2, " OR data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 476
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 477
    const-string v2, " ) "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/raw_contact_entities"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data1"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 487
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 488
    const/4 v14, 0x0

    .line 490
    .local v14, isSameContactAgain:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 492
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 493
    .local v12, id:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 495
    .local v16, name:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_8

    .line 496
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 497
    .local v17, phoneNum:Ljava/lang/String;
    const/4 v15, 0x0

    .line 498
    .local v15, isSamePhoneNum:Z
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 499
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    const/4 v15, 0x1

    .line 498
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 502
    :cond_4
    if-nez v15, :cond_5

    .line 503
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7

    .line 506
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 507
    const/4 v14, 0x1

    .line 505
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 509
    :cond_7
    if-nez v14, :cond_c

    .line 510
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v15           #isSamePhoneNum:Z
    .end local v17           #phoneNum:Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 518
    .end local v12           #id:Ljava/lang/Long;
    .end local v14           #isSameContactAgain:Z
    .end local v16           #name:Ljava/lang/String;
    :cond_9
    if-eqz v8, :cond_a

    .line 519
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    .line 523
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    .line 524
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    .line 525
    .end local v8           #c:Landroid/database/Cursor;
    :cond_b
    return-void

    .line 513
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v12       #id:Ljava/lang/Long;
    .restart local v14       #isSameContactAgain:Z
    .restart local v15       #isSamePhoneNum:Z
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #phoneNum:Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private getCountOfTotalBlackList()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 367
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 368
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "reject_number"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "reject_checked"

    aput-object v4, v2, v0

    .line 370
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 372
    .local v7, count:I
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_0
    return v7
.end method

.method private getDisplayName(J)Ljava/lang/String;
    .locals 11
    .parameter "contactId"

    .prologue
    const v10, 0x104000e

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 438
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 439
    .local v2, projection:[Ljava/lang/String;
    const-string v8, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    .line 441
    .local v8, selection:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 443
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, displayName:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 452
    if-nez v7, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 455
    :cond_0
    return-object v7

    .line 449
    .end local v7           #displayName:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 411
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v8, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 413
    .local v2, projection:[Ljava/lang/String;
    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 415
    .local v9, selection:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 417
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, phoneNum:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    .end local v7           #phoneNum:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_2
    return-object v8
.end method

.method private isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    .locals 9
    .parameter "result"

    .prologue
    .line 556
    move-object v5, p1

    .line 557
    .local v5, taskResult:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    iget v1, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->countOfTotalBlackList:I

    .line 558
    .local v1, countOfTotalBlackList:I
    iget-object v4, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    .line 560
    .local v4, rejectValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 561
    const/16 v3, 0x64

    .line 566
    .local v3, nRejectMaxCnt:I
    :goto_0
    const/4 v0, 0x0

    .line 567
    .local v0, countOfNeedToAddContact:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 568
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v6, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-nez v6, :cond_0

    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 567
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    .end local v0           #countOfNeedToAddContact:I
    .end local v2           #i:I
    .end local v3           #nRejectMaxCnt:I
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "autoreject_maxcount"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .restart local v3       #nRejectMaxCnt:I
    goto :goto_0

    .line 573
    .restart local v0       #countOfNeedToAddContact:I
    .restart local v2       #i:I
    :cond_2
    add-int v6, v1, v0

    if-le v6, v3, :cond_3

    .line 574
    const/4 v6, 0x1

    .line 576
    :goto_2
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 532
    iget-object v0, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    .line 533
    .local v0, exactlyMatchBlackListlHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    .line 535
    .local v2, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v4, rejectValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 539
    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 540
    .local v3, rejectValue:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    .line 542
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 544
    :cond_0
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    .line 549
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_1
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    goto :goto_1

    .line 552
    .end local v3           #rejectValue:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    :cond_2
    iput-object v4, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    .line 553
    return-void
.end method

.method private queryExactlyMatchBlackList()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 383
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v7, rejectCallHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 385
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    const-string v0, "reject_checked"

    aput-object v0, v2, v11

    .line 386
    .local v2, projection:[Ljava/lang/String;
    const-string v10, "reject_match = 0"

    .line 388
    .local v10, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 390
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_0
    :goto_0
    return-object v7

    .line 396
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, rejectNum:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 400
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 401
    .local v8, rejectCheck:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private showBlackListSizeOverDialog(I)V
    .locals 6
    .parameter "maxCount"

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, errorMessage:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01dc

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 258
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 259
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 11
    .parameter "result"

    .prologue
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v3, sameNumberContactsName:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 266
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, contactsName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_1
    if-lez v2, :cond_2

    .line 271
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_2
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v1           #contactsName:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v4, sameNumberString:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 280
    if-nez v2, :cond_4

    .line 281
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    :cond_4
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 288
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0260

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, addToRejectMessage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 292
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    :cond_6
    :goto_3
    return-void

    .line 295
    :cond_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0324

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;

    invoke-direct {v7, p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    .line 316
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_6

    .line 318
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_3
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 1
    .parameter "activity"
    .parameter "contactUri"
    .parameter "isAdd"

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startAddToRejectList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-direct {v0, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 154
    .local v0, result:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    .line 155
    iget-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    if-eqz v2, :cond_0

    .line 156
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 157
    .local v1, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    new-array v2, v4, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    .end local v1           #task:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 160
    .local v1, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;
    new-array v2, v4, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 4
    .parameter "activity"
    .parameter "contactUri"
    .parameter "isAdd"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 123
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "addToRejectList"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 125
    .local v0, fragment:Lcom/android/contacts/interactions/AddToRejectListInteraction;
    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .end local v0           #fragment:Lcom/android/contacts/interactions/AddToRejectListInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;-><init>()V

    .line 127
    .restart local v0       #fragment:Lcom/android/contacts/interactions/AddToRejectListInteraction;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    .line 128
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "addToRejectList"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    goto :goto_0
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 349
    if-eqz p1, :cond_0

    .line 350
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 351
    const-string v2, "contactUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 352
    const-string v2, "isAdd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 353
    const-string v2, "contactUris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 355
    const-string v2, "isAdds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 356
    .local v1, isAdds:[Z
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    aget-boolean v3, v1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v0           #i:I
    .end local v1           #isAdds:[Z
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 139
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 145
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 150
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 326
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    const-string v2, "active"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 333
    const-string v2, "isAdd"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string v2, "contactUris"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 336
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Z

    .line 338
    .local v1, isAdds:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    const-string v2, "isAdds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 344
    .end local v0           #i:I
    .end local v1           #isAdds:[Z
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    .line 216
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 217
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 222
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 225
    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 2
    .parameter "contactUri"
    .parameter "isAdd"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    :goto_0
    return-void

    .line 175
    :cond_3
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 176
    iput-boolean p2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method
