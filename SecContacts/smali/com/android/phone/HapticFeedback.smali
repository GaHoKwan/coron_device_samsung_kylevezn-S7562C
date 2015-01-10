.class public Lcom/android/phone/HapticFeedback;
.super Ljava/lang/Object;
.source "HapticFeedback.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEnabled:Z

.field private mHapticPattern:[J

.field private mSettingEnabled:Z

.field private mSystemSettings:Landroid/provider/Settings$System;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadHapticSystemPattern(Landroid/content/res/Resources;)Z
    .locals 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 151
    const v4, 0x1070026

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 157
    .local v2, pattern:[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 158
    :cond_0
    const-string v4, "HapticFeedback"

    const-string v5, "Haptic pattern is null or empty."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v2           #pattern:[I
    :goto_0
    return v3

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "HapticFeedback"

    const-string v5, "Vibrate pattern missing."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v1           #nfe:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #pattern:[I
    :cond_1
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    aget v4, v2, v0

    int-to-long v4, v4

    aput-wide v4, v3, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkSystemSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-boolean v2, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    if-nez v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    iget-object v2, p0, Lcom/android/phone/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, val:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v1           #val:I
    :catch_0
    move-exception v0

    .line 115
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "HapticFeedback"

    const-string v4, "Could not retrieve system setting."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iput-boolean v3, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z

    goto :goto_0

    .end local v0           #nfe:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #val:I
    :cond_1
    move v2, v3

    .line 113
    goto :goto_1
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 91
    iput-boolean p2, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    .line 92
    if-eqz p2, :cond_1

    .line 93
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HapticFeedback;->loadHapticSystemPattern(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 97
    :cond_0
    new-instance v0, Landroid/provider/Settings$System;

    invoke-direct {v0}, Landroid/provider/Settings$System;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    :cond_1
    return-void

    .line 95
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
