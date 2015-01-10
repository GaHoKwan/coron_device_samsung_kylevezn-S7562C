.class final Lnbisdk/cv;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fc:Lnbisdk/lu;


# direct methods
.method constructor <init>(Lnbisdk/lu;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-static {v2}, Lnbisdk/lu;->a(Lnbisdk/lu;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-static {v2, v0, v1}, Lnbisdk/lu;->a(Lnbisdk/lu;J)J

    iget-object v0, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-static {v0}, Lnbisdk/lu;->b(Lnbisdk/lu;)V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-virtual {v0}, Lnbisdk/lu;->jx()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lnbisdk/lu;->a(Lnbisdk/lu;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-virtual {v0}, Lnbisdk/lu;->jx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lnbisdk/lu;->a(Lnbisdk/lu;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/cv;->fc:Lnbisdk/lu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lnbisdk/lu;->a(Lnbisdk/lu;I)I

    goto :goto_0
.end method
