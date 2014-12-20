.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$3;
.super Ljava/lang/Object;
.source "MultiSimGsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTempIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 830
    return-void
.end method
