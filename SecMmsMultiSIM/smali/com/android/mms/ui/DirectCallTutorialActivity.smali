.class public Lcom/android/mms/ui/DirectCallTutorialActivity;
.super Landroid/app/Activity;
.source "DirectCallTutorialActivity.java"

# interfaces
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/DirectCallingTutorial"


# instance fields
.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "12345678"

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "12345678"

    return-object v0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, currentLanguage:Ljava/lang/String;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 93
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 98
    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 102
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, currentLanguage:Ljava/lang/String;
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 37
    const v2, 0x7f0e00ed

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    .line 44
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f020027

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    :goto_0
    new-instance v2, Lcom/android/mms/util/DirectCallingManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0358

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    const v2, 0x7f0a035a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 63
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    new-instance v3, Lcom/android/mms/ui/DirectCallTutorialActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/DirectCallTutorialActivity$1;-><init>(Lcom/android/mms/ui/DirectCallTutorialActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DirectCallingManager;->setFinishTutorialListener(Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;)V

    .line 75
    return-void

    .line 48
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2

    .line 51
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f020026

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 178
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0}, Lcom/android/mms/util/DirectCallingManager;->pause()V

    .line 159
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 139
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 165
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void
.end method
