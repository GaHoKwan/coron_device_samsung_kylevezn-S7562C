.class public Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$1;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION_COUNT:[Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "link_type1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->CONTACTS_PROJECTION_COUNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 318
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->loadAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static loadAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 22
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 121
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;"
    const/16 v21, 0x0

    .line 122
    .local v21, totalCount:I
    const/4 v8, 0x0

    .line 123
    .local v8, SIM_ZERO:I
    const/4 v7, 0x1

    .line 124
    .local v7, SIM_ONE:I
    const-string v14, ""

    .line 125
    .local v14, phoneCount:Ljava/lang/String;
    const-string v18, ""

    .line 126
    .local v18, simCount:Ljava/lang/String;
    const-string v20, ""

    .line 127
    .local v20, simMaxCount:Ljava/lang/String;
    const-string v16, ""

    .line 128
    .local v16, sim2Count:Ljava/lang/String;
    const-string v17, ""

    .line 133
    .local v17, sim2MaxCount:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v19

    .line 134
    .local v19, simManager:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 135
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v12, 0x1

    .line 138
    .local v12, isSimAvailable:Z
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v11, 0x1

    .line 174
    .local v11, isSim2Available:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->CONTACTS_PROJECTION_COUNT:[Ljava/lang/String;

    const-string v4, "link_type1=\'vnd.sec.contact.phone\' OR link_type1=\'com.sec.android.app.snsaccounttwitter.account_type\' OR link_type1=\'com.sec.android.app.snsaccountfacebook.account_type\' OR link_type1=\'com.sec.android.app.snsaccountme2day.account_type\' OR link_type1=\'com.sec.android.app.snsaccountmyspace.account_type\' OR link_type1=\'com.sec.android.app.snsaccountlinkedin.account_type\' OR link_type1=\'com.google\' OR link_type1=\'com.seven.Z7.gmail\' OR link_type1=\'com.seven.Z7.yahoo\' OR link_type1=\'com.seven.Z7.msn\' OR link_type1=\'com.seven.Z7.work\' OR link_type1=\'com.android.exchange\' OR link_type1=\'vnd.tmobileus.contact.phone\' OR link_type1=\'com.qik.android.account\' OR link_type1=\'com.fusionone.android.sync.baclient.account\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 192
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_1
    if-eqz v12, :cond_2

    .line 199
    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v13

    .line 200
    .local v13, isSimFull:Z
    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 201
    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount(Ljava/lang/String;)I

    move-result v1

    add-int v21, v21, v1

    .line 202
    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 205
    .end local v13           #isSimFull:Z
    :cond_2
    if-eqz v11, :cond_3

    .line 206
    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v13

    .line 207
    .restart local v13       #isSimFull:Z
    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 208
    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount(Ljava/lang/String;)I

    move-result v1

    add-int v21, v21, v1

    .line 209
    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 238
    .end local v13           #isSimFull:Z
    :cond_3
    if-eqz v9, :cond_4

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_4
    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    const v2, 0x7f0d012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    const v2, 0x7f0d0130

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-nez v1, :cond_5

    .line 246
    :cond_5
    if-eqz v12, :cond_6

    .line 247
    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    const v2, 0x7f0d0414

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_6
    if-eqz v11, :cond_7

    .line 251
    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    const v2, 0x7f0d0414

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim2"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_7
    return-object v15

    .line 135
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #isSim2Available:Z
    .end local v12           #isSimAvailable:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 138
    .restart local v12       #isSimAvailable:Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 142
    .end local v12           #isSimAvailable:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const/4 v10, 0x1

    .line 143
    .local v10, isAirplaneModeOn:Z
    :goto_2
    const/4 v1, 0x1

    if-ne v10, v1, :cond_e

    .line 144
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v12, 0x1

    .line 147
    .restart local v12       #isSimAvailable:Z
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v11, 0x1

    .restart local v11       #isSim2Available:Z
    :goto_4
    goto/16 :goto_1

    .line 142
    .end local v10           #isAirplaneModeOn:Z
    .end local v11           #isSim2Available:Z
    .end local v12           #isSimAvailable:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 144
    .restart local v10       #isAirplaneModeOn:Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    .line 147
    .restart local v12       #isSimAvailable:Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    .line 152
    .end local v12           #isSimAvailable:Z
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "vnd.sec.contact.sim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v12, 0x1

    .line 155
    .restart local v12       #isSimAvailable:Z
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "vnd.sec.contact.sim2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v11, 0x1

    .restart local v11       #isSim2Available:Z
    :goto_6
    goto/16 :goto_1

    .line 152
    .end local v11           #isSim2Available:Z
    .end local v12           #isSimAvailable:Z
    :cond_f
    const/4 v12, 0x0

    goto :goto_5

    .line 155
    .restart local v12       #isSimAvailable:Z
    :cond_10
    const/4 v11, 0x0

    goto :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f040056

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mListView:Landroid/widget/ListView;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;-><init>(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;Lcom/sec/android/app/contacts/activities/ContactCounterActivity$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 371
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
