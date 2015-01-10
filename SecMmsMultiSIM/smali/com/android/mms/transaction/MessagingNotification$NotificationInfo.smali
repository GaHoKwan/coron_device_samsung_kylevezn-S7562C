.class public Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationInfo"
.end annotation


# instance fields
.field public final mAttachmentBitmap:Landroid/graphics/Bitmap;

.field public final mAttachmentType:I

.field public mClickIntent:Landroid/content/Intent;

.field public mDescription:Ljava/lang/String;

.field public mIconResourceId:I

.field public final mIsSms:Z

.field public final mMessage:Ljava/lang/String;

.field public mPriority:I

.field public final mSender:Lcom/android/mms/data/Contact;

.field public mSimSlot:I

.field public final mSubject:Ljava/lang/String;

.field public final mThreadId:J

.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJII)V
    .locals 0
    .parameter "isSms"
    .parameter "clickIntent"
    .parameter "message"
    .parameter "subject"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "attachmentBitmap"
    .parameter "sender"
    .parameter "attachmentType"
    .parameter "threadId"
    .parameter "priority"
    .parameter "simSlot"

    .prologue
    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-boolean p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    .line 775
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 776
    iput-object p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 777
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    .line 778
    iput-object p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 779
    iput-wide p6, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    .line 780
    iput-object p8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 781
    iput-object p9, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 782
    iput-object p10, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 783
    iput p11, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 784
    iput-wide p12, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    .line 785
    iput p14, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    .line 786
    iput p15, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSimSlot:I

    .line 787
    return-void
.end method


# virtual methods
.method public formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 810
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0c000a

    invoke-direct {v1, p1, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 815
    .local v1, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string v4, "\\n\\s+"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 818
    .local v2, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 820
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 822
    :cond_0
    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    if-lez v3, :cond_2

    .line 823
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 824
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 826
    :cond_1
    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v3}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 828
    :cond_2
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 829
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 830
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 832
    :cond_3
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 834
    :cond_4
    return-object v2

    .line 815
    .end local v0           #message:Ljava/lang/String;
    .end local v2           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 840
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0c000a

    invoke-direct {v1, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 843
    .local v1, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0c000c

    invoke-direct {v2, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 848
    .local v2, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string v8, "\\n\\s+"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 851
    .local v5, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, sender:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 853
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 854
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v10, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 856
    :cond_0
    const v7, 0x7f0a04d8

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, separator:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    if-nez v7, :cond_4

    .line 859
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 860
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 861
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 863
    :cond_1
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 864
    .local v6, start:I
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 865
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 867
    .end local v6           #start:I
    :cond_2
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    if-lez v7, :cond_4

    .line 868
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 869
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 871
    :cond_3
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v7}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 874
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 875
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 876
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 878
    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 879
    .restart local v6       #start:I
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 880
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 882
    .end local v6           #start:I
    :cond_6
    return-object v5

    .line 848
    .end local v0           #message:Ljava/lang/String;
    .end local v3           #sender:Ljava/lang/String;
    .end local v4           #separator:Ljava/lang/String;
    .end local v5           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_7
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 887
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0c000a

    invoke-direct {v1, p1, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 892
    .local v1, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string v4, "\\n\\s+"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 896
    .local v2, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 897
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 898
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 900
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 901
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 902
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 904
    :cond_1
    return-object v2

    .line 892
    .end local v0           #message:Ljava/lang/String;
    .end local v2           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimSlot()J
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSimSlot:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 796
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
