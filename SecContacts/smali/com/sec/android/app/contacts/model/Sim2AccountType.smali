.class public Lcom/sec/android/app/contacts/model/Sim2AccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "Sim2AccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 47
    .local v1, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v2, "vnd.sec.contact.sim2"

    iput-object v2, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 49
    const v2, 0x7f0d0409

    iput v2, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 55
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 62
    iput-object v4, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/model/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v2, "Sim2AccountType"

    const-string v3, "Problem building account type"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
