.class public Lcom/android/systemui/statusbar/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# instance fields
.field mCardLocked:Z

.field mNetworkLocked:Z

.field mSimBlocked:Z

.field mSimMissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimMissed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimBlocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mCardLocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNetworkLocked:Z

    const-string v5, ""

    move-object v0, p0

    move v3, v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method updateForSimCardChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const v4, 0x10402e6

    const/4 v3, 0x0

    const-string v0, "StatusBar CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkName showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    if-eqz p2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez p2, :cond_4

    if-eqz p4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez p2, :cond_5

    if-nez p4, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimMissed:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    const v0, 0x10402f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mSimBlocked:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    const v0, 0x10402f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mCardLocked:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    const v0, 0x1040415

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mNetworkLocked:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    const v0, 0x10402ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    goto :goto_1
.end method
