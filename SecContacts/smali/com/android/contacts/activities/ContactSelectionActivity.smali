.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$1;,
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# instance fields
.field private mActionCode:I

.field public mAttachPhotoMode:Z

.field public mEmailMode:Z

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsMultiWindowSupported:Z

.field private mIsRecreatedInstance:Z

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field public mRingtoneMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 127
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 128
    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method private actionbarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0d001d

    .line 355
    const/4 v1, 0x0

    .line 357
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    move-object v2, v1

    .line 420
    .end local v1           #title:Ljava/lang/String;
    .local v2, title:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 362
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 363
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_0

    .line 418
    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v2, v1

    .line 420
    .end local v1           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    goto :goto_1

    .line 370
    :sswitch_1
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    goto :goto_1

    .line 375
    :sswitch_2
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    goto :goto_1

    .line 380
    :sswitch_3
    const v3, 0x7f0d001a

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    goto :goto_1

    .line 385
    :sswitch_4
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    goto :goto_1

    .line 390
    :sswitch_5
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    goto :goto_1

    .line 395
    :sswitch_6
    const v3, 0x7f0d001b

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    goto :goto_1

    .line 400
    :sswitch_7
    const v3, 0x7f0d001c

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    goto :goto_1

    .line 405
    :sswitch_8
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    goto :goto_1

    .line 411
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    goto :goto_1

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_9
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 781
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 782
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 783
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 784
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 428
    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 541
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 433
    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v2, :sswitch_data_0

    .line 529
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 436
    .local v0, fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 437
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    .line 438
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setRingToneMode(Z)V

    .line 439
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setAttachPhotoMode(Z)V

    .line 440
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 441
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setEmailMode(Z)V

    .line 442
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 532
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 533
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 534
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 535
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 536
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 538
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f090161

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :cond_1
    move v2, v4

    .line 436
    goto :goto_1

    .line 447
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 448
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 449
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v2

    const/16 v5, 0x19

    if-ne v2, v5, :cond_2

    .line 452
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setOnlyPhoneNumberProjection(Z)V

    .line 456
    :goto_3
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_2

    .line 454
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setOnlyPhoneNumberProjection(Z)V

    goto :goto_3

    .line 461
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 462
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    .line 463
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 464
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setRingToneMode(Z)V

    .line 465
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setAttachPhotoMode(Z)V

    .line 466
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v2

    const/16 v5, 0x18

    if-ne v2, v5, :cond_4

    :goto_5
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    .line 467
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :cond_3
    move v2, v4

    .line 463
    goto :goto_4

    :cond_4
    move v3, v4

    .line 466
    goto :goto_5

    .line 472
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 473
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 474
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 475
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 476
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 481
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 482
    .local v0, fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 487
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_5
    new-instance v2, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 492
    :sswitch_6
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 493
    .restart local v0       #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    .line 496
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 501
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_7
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 502
    .restart local v0       #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 504
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 509
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_8
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    .line 510
    .local v0, fragment:Lcom/android/contacts/list/PostalAddressPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 516
    .end local v0           #fragment:Lcom/android/contacts/list/PostalAddressPickerFragment;
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 517
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 523
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto/16 :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_9
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 749
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 750
    if-nez p1, :cond_2

    .line 751
    if-ne p2, v3, :cond_1

    .line 752
    if-eqz p3, :cond_0

    .line 753
    invoke-virtual {p0, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 758
    :cond_2
    if-ne p1, v2, :cond_4

    .line 760
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    if-eqz p3, :cond_3

    .line 762
    invoke-virtual {p0, v3, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 765
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 764
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    goto :goto_1

    .line 768
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 769
    if-eqz p3, :cond_5

    .line 770
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 771
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 772
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 773
    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 777
    .end local v0           #result:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 776
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    goto :goto_2
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 132
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    .line 136
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 717
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 718
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 721
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedState"

    .prologue
    const/16 v9, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsMultiWindowSupported:Z

    .line 145
    iget-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v5, :cond_0

    .line 146
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 150
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 151
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 217
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsRecreatedInstance:Z

    .line 158
    iget-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsRecreatedInstance:Z

    if-eqz v5, :cond_4

    .line 159
    const-string v5, "actionCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 160
    const-string v5, "photomode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    .line 161
    const-string v5, "ringtonemode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    .line 162
    const-string v5, "emailmode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    .line 176
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v4

    .line 177
    .local v4, redirect:Landroid/content/Intent;
    if-eqz v4, :cond_9

    .line 179
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .end local v4           #redirect:Landroid/content/Intent;
    :cond_3
    move v5, v7

    .line 157
    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 165
    .local v3, mIntent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 166
    const-string v5, "photo"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "photo_uri"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    .line 167
    const-string v5, "ringtone_uri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    .line 168
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 169
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_8

    .line 170
    const-string v5, "email"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    iput-boolean v6, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    goto :goto_2

    .end local v2           #extras:Landroid/os/Bundle;
    :cond_6
    move v5, v7

    .line 166
    goto :goto_3

    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_7
    move v6, v7

    .line 170
    goto :goto_4

    .line 172
    :cond_8
    iput-boolean v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    goto :goto_2

    .line 186
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #mIntent:Landroid/content/Intent;
    .restart local v4       #redirect:Landroid/content/Intent;
    :cond_9
    const v5, 0x7f040059

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    .line 188
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 189
    const v5, 0x7f090166

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mInteractionLayout:Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setLayoutAttribute()V

    .line 193
    :cond_a
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 194
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_b

    .line 196
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->actionbarTitle()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, actionbartitle:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 209
    .end local v1           #actionbartitle:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 224
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 225
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 241
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finishWithHidingIME()V

    .line 242
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 231
    const-string v0, "ContactSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v0, "photomode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    const-string v0, "ringtonemode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v0, "emailmode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setLayoutAttribute()V

    .line 254
    :cond_0
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 732
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 733
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 735
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 727
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 729
    return-void
.end method

.method protected setLayoutAttribute()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 258
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 261
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 263
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v2}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 285
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 270
    .local v0, param:Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 277
    :goto_1
    const-string v2, "DEFAULT"

    const-string v3, "TABLET_BLACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020733

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 272
    .end local v0           #param:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 273
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 274
    .restart local v0       #param:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020734

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 559
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    .line 557
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 698
    const/high16 v2, 0x200

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 702
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 706
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 712
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
