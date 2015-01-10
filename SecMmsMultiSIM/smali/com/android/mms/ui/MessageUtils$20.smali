.class final Lcom/android/mms/ui/MessageUtils$20;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contact:Lcom/android/mms/data/Contact;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6667
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6673
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_3

    .line 6674
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 6680
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListSeperateCallReject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6682
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    .line 6683
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 6688
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_5

    .line 6689
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6706
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6707
    return-void

    .line 6675
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    .line 6676
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 6684
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 6685
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 6690
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_2

    .line 6691
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->changeCheckStatus(Landroid/content/Context;ILjava/lang/String;)Z

    goto :goto_2

    .line 6697
    :cond_6
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_7

    .line 6698
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    .line 6699
    :cond_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    .line 6700
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$20;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$20;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->changeCheckStatus(Landroid/content/Context;ILjava/lang/String;)Z

    goto/16 :goto_2
.end method
