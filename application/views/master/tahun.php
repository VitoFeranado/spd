     <!-- Begin Page Content -->
     <div class="container-fluid">

         <!-- Page Heading -->
         <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>



         <div class="row">
             <div class="col-lg-6">
                 <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                 <?= $this->session->flashdata('message'); ?>
                 <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newTanggalModal">Tambah Tahun</a>

                 <table class="table fa-fw table-hover">
                     <thead>
                         <tr>
                             <th scope="col">#</th>
                             <th scope="col">Tahun</th>
                             <th scope="col">Status</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php $i = 1; ?>
                         <?php foreach ($tahun as $m) : ?>
                             <tr>
                                 <th scope="row"><?= $i; ?></th>
                                 <td><?= $m['tahun']; ?></td>
                                 <td><?= $m['status']; ?></td>
                                 <td>
                                     <a href="" class="badge badge-success" data-toggle="modal" data-target="#newTahuneditModal<?= $m['id']; ?>">edit</a>
                                     <a href="<?php echo site_url('master/hapus/' . $m['id']); ?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data <?= $m['tahun']; ?> ?');" class="badge badge-danger" data-popup="tooltip" data-placement="top" title="Hapus Data">delete</a>
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

     <div class="modal fade" id="newTanggalModal" tabindex="-1" role="dialog" aria-labelledby="newTanggalModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="newTanggalModalLabel">Tambah Tahun Anggaran</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <form action="<?= base_url('master/tahunanggaran'); ?>" method="post">
                     <div class="modal-body">
                         <div class="form-group">
                             <input type="text" class="form-control" id="tahun" name="tahun" placeholder="Tahun">
                         </div>
                         <div class="form-group">
                             <input type="text" class="form-control" id="status" name="status" placeholder="Status">
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
        foreach ($tahun as $m) : $no++; ?>
         <div class="modal fade" id="newTahuneditModal<?= $m['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="newTahuneditModalLabel" aria-hidden="true">
             <div class="modal-dialog" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="newTahuneditModalLabel">Edit</h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <form action="<?= base_url('master/edit') ?>" method="post">
                         <div class="modal-body">
                             <div class="form-group">
                                 <input type="hidden" class="form-control" id="id" name="id" value="<?= $m['id'] ?>">
                                 <th scope="col">Tahun</th>
                                 <input type="text" class="form-control" id="tahun" name="tahun" value="<?= $m['tahun'] ?>">
                             </div>
                             <div class="form-group">
                                 <th scope="col">Status</th>
                                 <input type="text" class="form-control" id="status" name="status" value="<?= $m['status'] ?>">
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