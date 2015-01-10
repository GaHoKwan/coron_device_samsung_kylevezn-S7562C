.class public Lcom/sec/android/app/contacts/model/VAppAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "VAppAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 31
    const-string v1, "com.coolots.chaton"

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 33
    const v1, 0x7f0d0388

    iput v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 34
    const v1, 0x7f020515

    iput v1, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/model/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v1, "VAppAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
