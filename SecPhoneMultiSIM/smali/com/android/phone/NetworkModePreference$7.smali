.class Lcom/android/phone/NetworkModePreference$7;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    #setter for: Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$1202(Lcom/android/phone/NetworkModePreference;I)I

    .line 482
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$700(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$600(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 483
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sk.action.dataButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    if-nez v0, :cond_0

    .line 485
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    .line 486
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$1502(I)I

    .line 487
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1400()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.ButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$1702(Z)Z

    .line 496
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0120

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/NetworkModePreference$7$2;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$7$2;-><init>(Lcom/android/phone/NetworkModePreference$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/phone/NetworkModePreference$7$1;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$7$1;-><init>(Lcom/android/phone/NetworkModePreference$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 512
    return-void

    .line 489
    :cond_0
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    .line 490
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1502(I)I

    .line 491
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1500()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
