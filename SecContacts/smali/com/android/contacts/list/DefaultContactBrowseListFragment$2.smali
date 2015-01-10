.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;
.super Lcom/android/contacts/list/ProfileAndContactsLoader;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0, p2}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 6

    .prologue
    .line 391
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    .line 392
    .local v1, isSimReady:Z
    const/4 v0, 0x0

    .line 393
    .local v0, isSim2Ready:Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    .line 397
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    .line 400
    if-eqz v1, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, selectionString:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    :cond_1
    const-string v3, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->setSelection(Ljava/lang/String;)V

    .line 423
    const-string v3, "DefaultContactBrowseListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimReady selectionString changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v2           #selectionString:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 428
    .restart local v2       #selectionString:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v3, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 435
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->setSelection(Ljava/lang/String;)V

    .line 438
    const-string v3, "DefaultContactBrowseListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSim2Ready selectionString changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v2           #selectionString:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldForceLoad()Z
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 467
    invoke-super {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->onContentChanged()V

    .line 469
    :cond_5
    return-void
.end method
