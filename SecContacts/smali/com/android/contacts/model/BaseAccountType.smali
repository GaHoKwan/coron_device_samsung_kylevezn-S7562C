.class public abstract Lcom/android/contacts/model/BaseAccountType;
.super Lcom/android/contacts/model/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;,
        Lcom/android/contacts/model/BaseAccountType$ImActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$EventActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$CommonInflater;,
        Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/contacts/model/AccountType;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 77
    const v0, 0x7f0d014b

    iput v0, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 78
    const/high16 v0, 0x7f03

    iput v0, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 79
    return-void
.end method


# virtual methods
.method protected addDataKindAlerttone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 481
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/alerttone"

    const v2, 0x7f0d02cb

    const v3, 0x1080094

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    const v6, 0x7f040110

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 484
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 485
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 486
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "sec_custom_alert"

    invoke-direct {v1, v2, v9, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    return-object v8
.end method

.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v11, 0x7f0d0195

    const v2, 0x7f0d0137

    const/4 v3, -0x1

    const/16 v10, 0x2061

    const/4 v5, 0x1

    .line 136
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "#displayName"

    const v6, 0x7f040175

    const v7, 0x101006e

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v9

    .line 139
    .local v9, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v9, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 140
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 142
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 143
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0d0194

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setIsFullName(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 149
    .local v8, displayOrderPrimary:Z
    if-nez v8, :cond_0

    .line 150
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0d0197

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0d0196

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0d0198

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v11, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0d0199

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_0
    return-object v9

    .line 161
    :cond_0
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0d0197

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v11, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0d0198

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0d0196

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, v9, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0d0199

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 258
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const v2, 0x7f0d0060

    const v3, 0x7f02051d

    const/16 v4, 0xf

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 261
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    const v0, 0x7f0d017c

    iput v0, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 262
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 263
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 264
    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 267
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 276
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0d02a9

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-object v8
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 455
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 456
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/group_membership"

    const v2, 0x7f0d013d

    const v3, 0x1080094

    const/16 v4, 0x384

    const/4 v5, 0x1

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 461
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 462
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    invoke-direct {v1, v2, v6, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-object v8
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const v2, 0x7f0d0061

    const/4 v9, 0x4

    const/4 v5, 0x1

    .line 334
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/im"

    const v3, 0x7f020568

    const/16 v4, 0x14

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 337
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    iput v2, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 338
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 339
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 344
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 345
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v0, "data5"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 348
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 349
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v10}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v11}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ImProviderFirstPostion_As"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 360
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableGoogleTalk"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data6"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 369
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-object v8

    .line 358
    :cond_1
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const v2, 0x7f0d0138

    .line 197
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/nickname"

    const/4 v3, -0x1

    const/16 v4, 0x73

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 200
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 201
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 202
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 204
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 207
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v8
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0d0055

    .line 400
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/note"

    const/4 v3, -0x1

    const/16 v4, 0x6e

    const/4 v5, 0x1

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 403
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    iput v2, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 405
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 406
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 407
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 408
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x24001

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-object v8
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2001

    .line 375
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0d0139

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x1

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 378
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 379
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 382
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 383
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0d0057

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0d0058

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    return-object v8
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    .line 214
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const v2, 0x7f0d005f

    const v3, 0x7f02050c

    const/16 v4, 0xa

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 217
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    const v0, 0x7f0d0341

    iput v0, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 218
    const v0, 0x7f020569

    iput v0, v8, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    .line 219
    const v0, 0x7f0d0176

    iput v0, v8, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    .line 220
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 221
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 222
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 223
    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 225
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 252
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0d02a8

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-object v8
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0d019d

    const/4 v3, -0x1

    const/16 v9, 0x2001

    const/4 v5, 0x1

    .line 177
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "#phoneticName"

    const v6, 0x7f040131

    const v7, 0x101006e

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 180
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0d0137

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 181
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 183
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 184
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "#phoneticName"

    invoke-direct {v1, v3, v2, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0d019c

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0d019b

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0d019a

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v8
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 392
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/photo"

    const/4 v5, 0x1

    const v7, 0x101006e

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 394
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 395
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-object v8
.end method

.method protected addDataKindRingtone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 469
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/ringtone"

    const v2, 0x7f0d02ac

    const v3, 0x1080094

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    const v6, 0x7f040115

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 472
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 473
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 474
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "custom_ringtone"

    invoke-direct {v1, v2, v9, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    return-object v8
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const v2, 0x7f0d0056

    .line 438
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/sip_address"

    const v3, 0x7f02050c

    const/16 v4, 0x82

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 442
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    iput v2, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 444
    iput v5, v8, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 445
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 446
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 447
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 448
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-object v8
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0d0137

    const/4 v3, -0x1

    const/16 v10, 0x2001

    const/16 v9, 0x2061

    const/4 v5, 0x1

    .line 106
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const v6, 0x7f040171

    const v7, 0x101006e

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 109
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 110
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 112
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 113
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0d0194

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0d0197

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0d0196

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0d0198

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0d0195

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0d0199

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0d019c

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0d019b

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0d019a

    invoke-direct {v1, v2, v3, v10}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v8
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v6, 0x7f040175

    const v7, 0x101006e

    const/16 v4, 0x19

    const/4 v5, 0x1

    const v9, 0x22071

    .line 282
    const/4 v8, 0x0

    .line 284
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_DisableGoogleMapIntegration"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0d0062

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 295
    :goto_0
    const v0, 0x7f0d018c

    iput v0, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 296
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 297
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 298
    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 300
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 308
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_UseSeparateAddressField"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0d018d

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0d018e

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0d018f

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0d0190

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0d0191

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0d0192

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0d0193

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_1
    return-object v8

    .line 290
    :cond_0
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0d0062

    const v3, 0x7f020556

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    goto/16 :goto_0

    .line 324
    :cond_1
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0d018c

    invoke-direct {v1, v2, v3, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected addDataKindVibration(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 493
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/vibration"

    const v2, 0x7f0d02c6

    const v3, 0x1080094

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    const v6, 0x7f040116

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 496
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/contacts/model/DataKind;->isList:Z

    .line 497
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 498
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "sec_custom_vibration"

    invoke-direct {v1, v2, v9, v9}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    return-object v8
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0d013a

    .line 414
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/website"

    const v3, 0x7f02051e

    const/16 v4, 0x78

    const/4 v5, 0x1

    const v6, 0x7f040175

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 417
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    iput v2, v8, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    .line 418
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 419
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 421
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 424
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-object v8
.end method

.method protected buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 86
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"
    .parameter "yearOptional"

    .prologue
    .line 98
    new-instance v0, Lcom/android/contacts/model/AccountType$EventEditType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/android/contacts/model/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected buildImType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 94
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 82
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 90
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 102
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method
