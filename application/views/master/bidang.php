     <!-- Begin Page Content -->
     <div class="container-fluid">

         <!-- Page Heading -->
         <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>





         <div class="row">
             <div class="col-lg-10">
                 <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                 <?= $this->session->flashdata('message'); ?>
                 <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newBidangModal">Tambah Bidang</a>

                 <table class="table fa-fw table-hover">
                     <thead>
                         <tr>
                             <th scope="col">#</th>
                             <th scope="col">ID Bidang</th>
                             <th scope="col">ID Urusan</th>
                             <th scope="col">ID SKPD</th>
                             <th scope="col">Kode Bidang</th>
                             <th scope="col">Nama Bidang</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php $i = 1; ?>
                         <?php foreach ($bidang as $m) : ?>
                             <tr>
                                 <th scope="row"><?= $i; ?></th>
                                 <td><?= $m['id_bidang']; ?></td>
                                 <td><?= $m['id_urusan']; ?></td>
                                 <td><?= $m['id_skpd']; ?></td>
                                 <td><?= $m['kode_bidang']; ?></td>
                                 <td style="text-align: left"><?= $m['nama_bidang']; ?></td>
                                 <td>
                                     <a href="" class="badge badge-success" data-toggle="modal" data-target="#newBidangeditModal<?= $m['id_bidang']; ?>">edit</a>
                                     <a href="<?php echo site_url('master/hapusbidang/' . $m['id_bidang']); ?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data <?= $m['id_bidang']; ?> ?');" class="badge badge-danger" data-popup="tooltip" data-placement="top" title="Hapus Data">delete</a>
                                 </td>
                             </tr>
                             <?php $i++; ?>
                         <?php endforeach; ?>
                     </tbody>
                 </table>
             </div>


         </div>
     </div>
     <!-- /.container-fluid -->

     </div>
     <!-- End of Main Content -->

     <!-- Modal tambah -->

     <div class="modal fade" id="newBidangModal" tabindex="-1" role="dialog" aria-labelledby="newBidangModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="newBidangModalLabel">Tambah Bidang</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <form action="<?= base_url('master/bidang'); ?>" method="post">
                     <div class="modal-body">
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_bidang" name="id_bidang" placeholder="ID Bidang">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_urusan" name="id_urusan" placeholder="ID Urusan">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="id_skpd" name="id_skpd" placeholder="ID SKPD">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="kode_bidang" name="kode_bidang" placeholder="Kode Bidang">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="nama_bidang" name="nama_bidang" placeholder="Nama Bidang">
                         </div>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                         <button type="submit" class="btn btn-primary">Add</button>
                     </div>
                 </form>
             </div>
         </div>
     </div>

     <!-- modal edit -->
     <?php $no = 0;
        foreach ($bidang as $m) : $no++; ?>
         <div class="modal fade" id="newBidangeditModal<?= $m['id_bidang'] ?>" tabindex="-1" role="dialog" aria-labelledby="newBidangeditModalLabel" aria-hidden="true">
             <div class="modal-dialog" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="newBidangeditModalLabel">Edit</h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <form action="<?= base_url('master/editbidang') ?>" method="post">
                         <div class="modal-body">
                             <div class="form-group">
                                 <th scope="col">ID Bidang</th>
                                 <input type="text" class="form-control" id="id_bidang" name="id_bidang" value="<?= $m['id_bidang'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">ID Urusan</th>
                                 <input type="text" class="form-control" id="id_urusan" name="id_urusan" value="<?= $m['id_urusan'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">ID SKPD</th>
                                 <input type="text" class="form-control" id="id_skpd" name="id_skpd" value="<?= $m['id_skpd'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">Kode Bidang</th>
                                 <input type="text" class="form-control" id="kode_bidang" name="kode_bidang" value="<?= $m['kode_bidang'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">Nama Bidang</th>
                                 <input type="text" class="form-control" id="nama_bidang" name="nama_bidang" value="<?= $m['nama_bidang'] ?>">
                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                             <button type="submit" class="btn btn-primary">Edit</button>
                         </div>
                     </form>
                 </div>
             </div>
         </div>
     <?php endforeach; ?>