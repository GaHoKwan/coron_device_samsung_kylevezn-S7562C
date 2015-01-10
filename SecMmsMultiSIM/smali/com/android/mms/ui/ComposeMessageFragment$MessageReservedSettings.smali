.class Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageReservedSettings"
.end annotation


# instance fields
.field private mReservationTime:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "rootview"

    .prologue
    .line 16889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16890
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->mReservationTime:J

    .line 16891
    return-void
.end method


# virtual methods
.method public getDeliveryTime()J
    .locals 4

    .prologue
    .line 16909
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->mReservationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 16910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16912
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->mReservationTime:J

    goto :goto_0
.end method

.method public getReservationTime()J
    .locals 2

    .prologue
    .line 16898
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->mReservationTime:J

    return-wide v0
.end method

.method public isEnableReservation()Z
    .locals 4

    .prologue
    .line 16902
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->mReservationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 16903
    const/4 v0, 0x1

    .line 16905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReservationTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 16894
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->mReservationTime:J

    .line 16895
    return-void
.end method
