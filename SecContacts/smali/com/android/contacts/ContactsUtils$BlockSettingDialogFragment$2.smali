.class Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->BlockNumberSettingDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 516
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v4

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v4

    if-eq v1, v2, :cond_2

    .line 517
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_4

    .line 518
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 519
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-nez v1, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v2, v4

    .line 518
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v4

    .line 537
    .end local v0           #i:I
    :cond_2
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v5

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v5

    if-eq v1, v2, :cond_7

    .line 538
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_9

    .line 539
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 540
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-nez v1, :cond_3

    .line 541
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 542
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v2, v5

    .line 539
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 531
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 532
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-eqz v1, :cond_5

    .line 533
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 531
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 544
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 545
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v5

    .line 558
    .end local v0           #i:I
    :cond_7
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v1, v1, v6

    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v2, v2, v6

    if-eq v1, v2, :cond_c

    .line 559
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_d

    .line 560
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 561
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    if-nez v1, :cond_8

    .line 562
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 563
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    iget-object v3, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v2, v6

    .line 560
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 552
    .end local v0           #i:I
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 553
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-eqz v1, :cond_a

    .line 554
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 565
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 566
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v4, v1, v6

    .line 579
    .end local v0           #i:I
    :cond_c
    return-void

    .line 573
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 574
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    if-eqz v1, :cond_e

    .line 575
    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v1, v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
