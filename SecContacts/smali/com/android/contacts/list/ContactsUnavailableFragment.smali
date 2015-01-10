.class public Lcom/android/contacts/list/ContactsUnavailableFragment;
.super Landroid/app/Fragment;
.source "ContactsUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private hasProviderStatus:Z

.field private mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mNSecNoContactsMsgResId:I

.field private mNoContactsMsgResId:I

.field private mNoItemsImageView:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mRetryUpgradeButton:Landroid/widget/Button;

.field private mSecondaryMessageView:Landroid/widget/TextView;

.field private mUninstallAppsButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private noContactType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 60
    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    .line 62
    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->hasProviderStatus:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onFreeInternalStorageAction()V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 222
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 223
    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->retryUpgrade(Landroid/content/Context;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901a4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    const v0, 0x7f04017f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 104
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setMessageText(II)V
    .locals 6
    .parameter "resId"
    .parameter "secResId"

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 236
    iput p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    .line 237
    iput p2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    .line 238
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v0, v5, :cond_0

    .line 240
    if-eq p1, v2, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 243
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    if-eq p2, v2, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNoContactType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 260
    iput p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->noContactType:I

    .line 261
    return-void
.end method

.method public setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    .line 111
    return-void
.end method

.method public updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V
    .locals 7
    .parameter "providerStatus"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 114
    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 115
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->noContactType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_1
    iget v1, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0d01b4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iget v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    .line 142
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0d01b3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01b5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->data:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 133
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
