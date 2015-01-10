.class public Lcom/sec/android/app/contacts/model/TMOAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "TMOAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "authenticatorPackageName"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 42
    const-string v1, "vnd.tmobileus.contact.phone"

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/TMOAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindRingtone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindAlerttone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindVibration(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/TMOAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/model/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v1, "TMOAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0d013b

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 78
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v3, -0x1

    const/16 v4, 0x96

    const v6, 0x7f0400ee

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 82
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 83
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 87
    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 89
    sget-object v0, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 90
    sget-object v0, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 91
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v10, v5}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5, v9}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9, v9}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 98
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 101
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v8
.end method


# virtual methods
.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v6, 0x22071

    .line 128
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v1

    .line 129
    .local v1, kind:Lcom/android/contacts/model/DataKind;
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, buildcarrier:Ljava/lang/String;
    const-string v2, "d2tmo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const-string v2, "data2"

    iput-object v2, v1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 134
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 138
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0d018d

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0d0190

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0d0191

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0d0192

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0d0193

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    return-object v1
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
