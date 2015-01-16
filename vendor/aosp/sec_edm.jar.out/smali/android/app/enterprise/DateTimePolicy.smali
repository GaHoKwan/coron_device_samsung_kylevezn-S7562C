.class public Landroid/app/enterprise/DateTimePolicy;
.super Ljava/lang/Object;
.source "DateTimePolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDateTimePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "DateTimePolicy"

    sput-object v0, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "date_time_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDateTimePolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    .line 65
    return-void
.end method


# virtual methods
.method public getAutomaticTime()Z
    .locals 3

    .prologue
    .line 301
    const-string v1, "DateTimePolicy.getAutomaticTime"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getAutomaticTime()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getAutomaticTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    const-string v1, "DateTimePolicy.getDateFormat"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getDateFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDateFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDateTime()Ljava/util/Date;
    .locals 6

    .prologue
    .line 122
    const-string v4, "DateTimePolicy.getDateTime"

    invoke-static {v4}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget-object v4, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v4}, Landroid/app/enterprise/IDateTimePolicy;->getDateTime()J

    move-result-wide v2

    .line 127
    .local v2, millis:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 134
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #millis:J
    :goto_0
    return-object v4

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at DateTime policy API getDateTime"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getDaylightSavingTime()Z
    .locals 3

    .prologue
    .line 319
    const-string v1, "DateTimePolicy.getDaylightSavingTime"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 321
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getDaylightSavingTime()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDaylightSavingTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    const-string v1, "DateTimePolicy.getTimeFormat"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getTimeFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    const-string v1, "DateTimePolicy.getTimeZone"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->getTimeZone()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getTimeZone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDateTimeChangeEnabled()Z
    .locals 3

    .prologue
    .line 386
    const-string v1, "DateTimePolicy.isDateTimeChangeEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDateTimePolicy;->isDateTimeChangeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 394
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticTime(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 284
    const-string v1, "DateTimePolicy.setAutomaticTime"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setAutomaticTime(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setAutomaticTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)Z
    .locals 3
    .parameter "format"

    .prologue
    .line 237
    const-string v1, "DateTimePolicy.setDateFormat"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setDateFormat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setDateFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDateTime(IIIIII)Z
    .locals 5
    .parameter "day"
    .parameter "month"
    .parameter "year"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 93
    const-string v2, "DateTimePolicy.setDateTime"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v2, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 99
    .local v0, c:Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v2, 0xd

    invoke-virtual {v0, v2, p6}, Ljava/util/Calendar;->set(II)V

    .line 105
    iget-object v2, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroid/app/enterprise/IDateTimePolicy;->setDateTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 110
    .end local v0           #c:Ljava/util/Calendar;
    :goto_0
    return v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at DateTime policy API setDateTime"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDateTimeChangeEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 362
    const-string v1, "DateTimePolicy.setDateTimeChangeEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 364
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setDateTimeChangeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 370
    :goto_0
    return v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTimeFormat(Ljava/lang/String;)Z
    .locals 3
    .parameter "format"

    .prologue
    .line 196
    const-string v1, "DateTimePolicy.setTimeFormat"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setTimeFormat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)Z
    .locals 3
    .parameter "timeZoneID"

    .prologue
    .line 152
    const-string v1, "DateTimePolicy.setTimeZone"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Landroid/app/enterprise/DateTimePolicy;->mService:Landroid/app/enterprise/IDateTimePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDateTimePolicy;->setTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeZone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
